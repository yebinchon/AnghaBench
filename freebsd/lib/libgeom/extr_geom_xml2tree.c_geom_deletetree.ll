; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_xml2tree.c_geom_deletetree.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_xml2tree.c_geom_deletetree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmesh = type { i32, %struct.gprovider* }
%struct.gprovider = type { %struct.gprovider*, i32, i32, %struct.gprovider*, i32, i32 }
%struct.gclass = type { %struct.gclass*, i32, i32, %struct.gclass*, i32, i32 }
%struct.ggeom = type { %struct.ggeom*, i32, i32, %struct.ggeom*, i32, i32 }
%struct.gconsumer = type { %struct.gconsumer*, i32, i32, %struct.gconsumer*, i32, i32 }

@lg_class = common dso_local global i32 0, align 4
@lg_geom = common dso_local global i32 0, align 4
@lg_provider = common dso_local global i32 0, align 4
@lg_consumer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geom_deletetree(%struct.gmesh* %0) #0 {
  %2 = alloca %struct.gmesh*, align 8
  %3 = alloca %struct.gclass*, align 8
  %4 = alloca %struct.ggeom*, align 8
  %5 = alloca %struct.gprovider*, align 8
  %6 = alloca %struct.gconsumer*, align 8
  store %struct.gmesh* %0, %struct.gmesh** %2, align 8
  %7 = load %struct.gmesh*, %struct.gmesh** %2, align 8
  %8 = getelementptr inbounds %struct.gmesh, %struct.gmesh* %7, i32 0, i32 1
  %9 = load %struct.gprovider*, %struct.gprovider** %8, align 8
  %10 = call i32 @free(%struct.gprovider* %9)
  %11 = load %struct.gmesh*, %struct.gmesh** %2, align 8
  %12 = getelementptr inbounds %struct.gmesh, %struct.gmesh* %11, i32 0, i32 1
  store %struct.gprovider* null, %struct.gprovider** %12, align 8
  br label %13

13:                                               ; preds = %138, %1
  %14 = load %struct.gmesh*, %struct.gmesh** %2, align 8
  %15 = getelementptr inbounds %struct.gmesh, %struct.gmesh* %14, i32 0, i32 0
  %16 = call %struct.gprovider* @LIST_FIRST(i32* %15)
  %17 = bitcast %struct.gprovider* %16 to %struct.gclass*
  store %struct.gclass* %17, %struct.gclass** %3, align 8
  %18 = load %struct.gclass*, %struct.gclass** %3, align 8
  %19 = icmp eq %struct.gclass* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %142

21:                                               ; preds = %13
  %22 = load %struct.gclass*, %struct.gclass** %3, align 8
  %23 = bitcast %struct.gclass* %22 to %struct.gprovider*
  %24 = load i32, i32* @lg_class, align 4
  %25 = call i32 @LIST_REMOVE(%struct.gprovider* %23, i32 %24)
  %26 = load %struct.gclass*, %struct.gclass** %3, align 8
  %27 = getelementptr inbounds %struct.gclass, %struct.gclass* %26, i32 0, i32 1
  %28 = call i32 @delete_config(i32* %27)
  %29 = load %struct.gclass*, %struct.gclass** %3, align 8
  %30 = getelementptr inbounds %struct.gclass, %struct.gclass* %29, i32 0, i32 3
  %31 = load %struct.gclass*, %struct.gclass** %30, align 8
  %32 = icmp ne %struct.gclass* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.gclass*, %struct.gclass** %3, align 8
  %35 = getelementptr inbounds %struct.gclass, %struct.gclass* %34, i32 0, i32 3
  %36 = load %struct.gclass*, %struct.gclass** %35, align 8
  %37 = bitcast %struct.gclass* %36 to %struct.gprovider*
  %38 = call i32 @free(%struct.gprovider* %37)
  br label %39

39:                                               ; preds = %33, %21
  br label %40

40:                                               ; preds = %134, %39
  %41 = load %struct.gclass*, %struct.gclass** %3, align 8
  %42 = getelementptr inbounds %struct.gclass, %struct.gclass* %41, i32 0, i32 5
  %43 = call %struct.gprovider* @LIST_FIRST(i32* %42)
  %44 = bitcast %struct.gprovider* %43 to %struct.ggeom*
  store %struct.ggeom* %44, %struct.ggeom** %4, align 8
  %45 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %46 = icmp eq %struct.ggeom* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %138

48:                                               ; preds = %40
  %49 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %50 = bitcast %struct.ggeom* %49 to %struct.gprovider*
  %51 = load i32, i32* @lg_geom, align 4
  %52 = call i32 @LIST_REMOVE(%struct.gprovider* %50, i32 %51)
  %53 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %54 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %53, i32 0, i32 1
  %55 = call i32 @delete_config(i32* %54)
  %56 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %57 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %56, i32 0, i32 3
  %58 = load %struct.ggeom*, %struct.ggeom** %57, align 8
  %59 = icmp ne %struct.ggeom* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %62 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %61, i32 0, i32 3
  %63 = load %struct.ggeom*, %struct.ggeom** %62, align 8
  %64 = bitcast %struct.ggeom* %63 to %struct.gprovider*
  %65 = call i32 @free(%struct.gprovider* %64)
  br label %66

66:                                               ; preds = %60, %48
  br label %67

67:                                               ; preds = %100, %66
  %68 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %69 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %68, i32 0, i32 4
  %70 = call %struct.gprovider* @LIST_FIRST(i32* %69)
  store %struct.gprovider* %70, %struct.gprovider** %5, align 8
  %71 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %72 = icmp eq %struct.gprovider* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %103

74:                                               ; preds = %67
  %75 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %76 = load i32, i32* @lg_provider, align 4
  %77 = call i32 @LIST_REMOVE(%struct.gprovider* %75, i32 %76)
  %78 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %79 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %78, i32 0, i32 1
  %80 = call i32 @delete_config(i32* %79)
  %81 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %82 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %81, i32 0, i32 3
  %83 = load %struct.gprovider*, %struct.gprovider** %82, align 8
  %84 = icmp ne %struct.gprovider* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %87 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %86, i32 0, i32 3
  %88 = load %struct.gprovider*, %struct.gprovider** %87, align 8
  %89 = call i32 @free(%struct.gprovider* %88)
  br label %90

90:                                               ; preds = %85, %74
  %91 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %92 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %91, i32 0, i32 0
  %93 = load %struct.gprovider*, %struct.gprovider** %92, align 8
  %94 = icmp ne %struct.gprovider* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %97 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %96, i32 0, i32 0
  %98 = load %struct.gprovider*, %struct.gprovider** %97, align 8
  %99 = call i32 @free(%struct.gprovider* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.gprovider*, %struct.gprovider** %5, align 8
  %102 = call i32 @free(%struct.gprovider* %101)
  br label %67

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %130, %103
  %105 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %106 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %105, i32 0, i32 2
  %107 = call %struct.gprovider* @LIST_FIRST(i32* %106)
  %108 = bitcast %struct.gprovider* %107 to %struct.gconsumer*
  store %struct.gconsumer* %108, %struct.gconsumer** %6, align 8
  %109 = load %struct.gconsumer*, %struct.gconsumer** %6, align 8
  %110 = icmp eq %struct.gconsumer* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %134

112:                                              ; preds = %104
  %113 = load %struct.gconsumer*, %struct.gconsumer** %6, align 8
  %114 = bitcast %struct.gconsumer* %113 to %struct.gprovider*
  %115 = load i32, i32* @lg_consumer, align 4
  %116 = call i32 @LIST_REMOVE(%struct.gprovider* %114, i32 %115)
  %117 = load %struct.gconsumer*, %struct.gconsumer** %6, align 8
  %118 = getelementptr inbounds %struct.gconsumer, %struct.gconsumer* %117, i32 0, i32 1
  %119 = call i32 @delete_config(i32* %118)
  %120 = load %struct.gconsumer*, %struct.gconsumer** %6, align 8
  %121 = getelementptr inbounds %struct.gconsumer, %struct.gconsumer* %120, i32 0, i32 0
  %122 = load %struct.gconsumer*, %struct.gconsumer** %121, align 8
  %123 = icmp ne %struct.gconsumer* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %112
  %125 = load %struct.gconsumer*, %struct.gconsumer** %6, align 8
  %126 = getelementptr inbounds %struct.gconsumer, %struct.gconsumer* %125, i32 0, i32 0
  %127 = load %struct.gconsumer*, %struct.gconsumer** %126, align 8
  %128 = bitcast %struct.gconsumer* %127 to %struct.gprovider*
  %129 = call i32 @free(%struct.gprovider* %128)
  br label %130

130:                                              ; preds = %124, %112
  %131 = load %struct.gconsumer*, %struct.gconsumer** %6, align 8
  %132 = bitcast %struct.gconsumer* %131 to %struct.gprovider*
  %133 = call i32 @free(%struct.gprovider* %132)
  br label %104

134:                                              ; preds = %111
  %135 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %136 = bitcast %struct.ggeom* %135 to %struct.gprovider*
  %137 = call i32 @free(%struct.gprovider* %136)
  br label %40

138:                                              ; preds = %47
  %139 = load %struct.gclass*, %struct.gclass** %3, align 8
  %140 = bitcast %struct.gclass* %139 to %struct.gprovider*
  %141 = call i32 @free(%struct.gprovider* %140)
  br label %13

142:                                              ; preds = %20
  ret void
}

declare dso_local i32 @free(%struct.gprovider*) #1

declare dso_local %struct.gprovider* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.gprovider*, i32) #1

declare dso_local i32 @delete_config(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

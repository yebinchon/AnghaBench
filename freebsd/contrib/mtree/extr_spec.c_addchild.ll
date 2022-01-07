; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_spec.c_addchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_spec.c_addchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32 }

@mtree_Sflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*)* @addchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addchild(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %19, align 8
  br label %179

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %54, %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i32 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %5, align 8
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i64, i64* @mtree_Sflag, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = call i32 @nodecmp(%struct.TYPE_8__* %39, %struct.TYPE_8__* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %6, align 8
  br label %52

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %7, align 8
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %44
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %9, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %8, align 8
  br label %21

59:                                               ; preds = %21
  %60 = load i64, i64* @mtree_Sflag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %6, align 8
  br label %69

67:                                               ; preds = %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %7, align 8
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %136

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = call i32 @replacenode(%struct.TYPE_8__* %74, %struct.TYPE_8__* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = icmp eq %struct.TYPE_8__* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %179

81:                                               ; preds = %73
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = icmp eq %struct.TYPE_8__* %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = icmp eq %struct.TYPE_8__* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %81
  br label %179

92:                                               ; preds = %85
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %4, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = icmp ne %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %105, align 8
  br label %118

106:                                              ; preds = %92
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = icmp ne %struct.TYPE_8__* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  br label %118

118:                                              ; preds = %106, %98
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = icmp ne %struct.TYPE_8__* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %130, align 8
  br label %131

131:                                              ; preds = %123, %118
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %135, align 8
  br label %136

136:                                              ; preds = %131, %70
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = icmp eq %struct.TYPE_8__* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store %struct.TYPE_8__* %140, %struct.TYPE_8__** %144, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store %struct.TYPE_8__* %147, %struct.TYPE_8__** %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %151, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  store %struct.TYPE_8__* %152, %struct.TYPE_8__** %154, align 8
  br label %178

155:                                              ; preds = %136
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store %struct.TYPE_8__* %161, %struct.TYPE_8__** %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %166, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = icmp ne %struct.TYPE_8__* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %155
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %176, align 8
  br label %177

177:                                              ; preds = %171, %155
  br label %178

178:                                              ; preds = %177, %139
  br label %179

179:                                              ; preds = %178, %91, %80, %16
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @nodecmp(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @replacenode(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

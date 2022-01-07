; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_resource_needs_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_resource_needs_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@HAST_ROLE_INIT = common dso_local global i64 0, align 8
@HAST_ROLE_SECONDARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hast_resource*, %struct.hast_resource*)* @resource_needs_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resource_needs_restart(%struct.hast_resource* %0, %struct.hast_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hast_resource*, align 8
  %5 = alloca %struct.hast_resource*, align 8
  store %struct.hast_resource* %0, %struct.hast_resource** %4, align 8
  store %struct.hast_resource* %1, %struct.hast_resource** %5, align 8
  %6 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %7 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %10 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %8, i32 %11)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %17 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %20 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @strcmp(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %124

25:                                               ; preds = %2
  %26 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %27 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %30 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strcmp(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %124

35:                                               ; preds = %25
  %36 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %37 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HAST_ROLE_INIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %43 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HAST_ROLE_SECONDARY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %123

47:                                               ; preds = %41, %35
  %48 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %49 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %52 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @strcmp(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %124

57:                                               ; preds = %47
  %58 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %59 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %62 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @strcmp(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %124

67:                                               ; preds = %57
  %68 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %69 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %72 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %124

76:                                               ; preds = %67
  %77 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %78 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %81 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %124

85:                                               ; preds = %76
  %86 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %87 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %90 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %124

94:                                               ; preds = %85
  %95 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %96 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %99 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 1, i32* %3, align 4
  br label %124

103:                                              ; preds = %94
  %104 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %105 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %108 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @strcmp(i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %124

113:                                              ; preds = %103
  %114 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %115 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %118 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  store i32 1, i32* %3, align 4
  br label %124

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %41
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %121, %112, %102, %93, %84, %75, %66, %56, %34, %24
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

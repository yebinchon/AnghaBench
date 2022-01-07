; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_resource_needs_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_resource_needs_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@HAST_ROLE_PRIMARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hast_resource*, %struct.hast_resource*)* @resource_needs_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resource_needs_reload(%struct.hast_resource* %0, %struct.hast_resource* %1) #0 {
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
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %27 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %30 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strcmp(i32 %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @PJDLOG_ASSERT(i32 %34)
  %36 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %37 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HAST_ROLE_PRIMARY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

42:                                               ; preds = %2
  %43 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %44 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %47 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @strcmp(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %118

52:                                               ; preds = %42
  %53 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %54 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %57 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strcmp(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %118

62:                                               ; preds = %52
  %63 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %64 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %67 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %118

71:                                               ; preds = %62
  %72 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %73 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %76 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %118

80:                                               ; preds = %71
  %81 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %82 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %85 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %118

89:                                               ; preds = %80
  %90 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %91 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %94 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %118

98:                                               ; preds = %89
  %99 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %100 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %103 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @strcmp(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %118

108:                                              ; preds = %98
  %109 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %110 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %113 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %118

117:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %116, %107, %97, %88, %79, %70, %61, %51, %41
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

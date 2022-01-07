; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_master_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_master_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_master = type { %struct.auth_master*, %struct.auth_master*, i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_master* (%struct.auth_master*)* @auth_master_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_master* @auth_master_copy(%struct.auth_master* %0) #0 {
  %2 = alloca %struct.auth_master*, align 8
  %3 = alloca %struct.auth_master*, align 8
  %4 = alloca %struct.auth_master*, align 8
  store %struct.auth_master* %0, %struct.auth_master** %3, align 8
  %5 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %6 = icmp ne %struct.auth_master* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.auth_master* null, %struct.auth_master** %2, align 8
  br label %96

8:                                                ; preds = %1
  %9 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %10 = call i64 @memdup(%struct.auth_master* %9, i32 32)
  %11 = inttoptr i64 %10 to %struct.auth_master*
  store %struct.auth_master* %11, %struct.auth_master** %4, align 8
  %12 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %13 = icmp ne %struct.auth_master* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_master* null, %struct.auth_master** %2, align 8
  br label %96

16:                                               ; preds = %8
  %17 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %18 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %20 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %19, i32 0, i32 0
  %21 = load %struct.auth_master*, %struct.auth_master** %20, align 8
  %22 = icmp ne %struct.auth_master* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %25 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %24, i32 0, i32 0
  %26 = load %struct.auth_master*, %struct.auth_master** %25, align 8
  %27 = call i8* @strdup(%struct.auth_master* %26)
  %28 = bitcast i8* %27 to %struct.auth_master*
  %29 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %30 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %29, i32 0, i32 0
  store %struct.auth_master* %28, %struct.auth_master** %30, align 8
  %31 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %32 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %31, i32 0, i32 0
  %33 = load %struct.auth_master*, %struct.auth_master** %32, align 8
  %34 = icmp ne %struct.auth_master* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %37 = call i32 @free(%struct.auth_master* %36)
  %38 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_master* null, %struct.auth_master** %2, align 8
  br label %96

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %42 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %41, i32 0, i32 1
  %43 = load %struct.auth_master*, %struct.auth_master** %42, align 8
  %44 = icmp ne %struct.auth_master* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %47 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %46, i32 0, i32 1
  %48 = load %struct.auth_master*, %struct.auth_master** %47, align 8
  %49 = call i8* @strdup(%struct.auth_master* %48)
  %50 = bitcast i8* %49 to %struct.auth_master*
  %51 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %52 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %51, i32 0, i32 1
  store %struct.auth_master* %50, %struct.auth_master** %52, align 8
  %53 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %54 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %53, i32 0, i32 1
  %55 = load %struct.auth_master*, %struct.auth_master** %54, align 8
  %56 = icmp ne %struct.auth_master* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %45
  %58 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %59 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %58, i32 0, i32 0
  %60 = load %struct.auth_master*, %struct.auth_master** %59, align 8
  %61 = call i32 @free(%struct.auth_master* %60)
  %62 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %63 = call i32 @free(%struct.auth_master* %62)
  %64 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_master* null, %struct.auth_master** %2, align 8
  br label %96

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %68 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %73 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @auth_addr_list_copy(i64 %74)
  %76 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %77 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %79 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %71
  %83 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %84 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %83, i32 0, i32 1
  %85 = load %struct.auth_master*, %struct.auth_master** %84, align 8
  %86 = call i32 @free(%struct.auth_master* %85)
  %87 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %88 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %87, i32 0, i32 0
  %89 = load %struct.auth_master*, %struct.auth_master** %88, align 8
  %90 = call i32 @free(%struct.auth_master* %89)
  %91 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %92 = call i32 @free(%struct.auth_master* %91)
  store %struct.auth_master* null, %struct.auth_master** %2, align 8
  br label %96

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  store %struct.auth_master* %95, %struct.auth_master** %2, align 8
  br label %96

96:                                               ; preds = %94, %82, %57, %35, %14, %7
  %97 = load %struct.auth_master*, %struct.auth_master** %2, align 8
  ret %struct.auth_master* %97
}

declare dso_local i64 @memdup(%struct.auth_master*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i8* @strdup(%struct.auth_master*) #1

declare dso_local i32 @free(%struct.auth_master*) #1

declare dso_local i64 @auth_addr_list_copy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

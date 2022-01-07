; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfer_set_masters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfer_set_masters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_master = type { i32, i32, i32, i8*, i32, i32, i32, %struct.auth_master* }
%struct.config_auth = type { %struct.config_strlist*, %struct.config_strlist*, %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfer_set_masters(%struct.auth_master** %0, %struct.config_auth* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_master**, align 8
  %6 = alloca %struct.config_auth*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_master*, align 8
  %9 = alloca %struct.config_strlist*, align 8
  store %struct.auth_master** %0, %struct.auth_master*** %5, align 8
  store %struct.config_auth* %1, %struct.config_auth** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %14, %3
  %11 = load %struct.auth_master**, %struct.auth_master*** %5, align 8
  %12 = load %struct.auth_master*, %struct.auth_master** %11, align 8
  %13 = icmp ne %struct.auth_master* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.auth_master**, %struct.auth_master*** %5, align 8
  %16 = load %struct.auth_master*, %struct.auth_master** %15, align 8
  %17 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %16, i32 0, i32 7
  store %struct.auth_master** %17, %struct.auth_master*** %5, align 8
  br label %10

18:                                               ; preds = %10
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load %struct.config_auth*, %struct.config_auth** %6, align 8
  %23 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %22, i32 0, i32 2
  %24 = load %struct.config_strlist*, %struct.config_strlist** %23, align 8
  store %struct.config_strlist* %24, %struct.config_strlist** %9, align 8
  br label %25

25:                                               ; preds = %47, %21
  %26 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %27 = icmp ne %struct.config_strlist* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = call %struct.auth_master* @auth_master_new(%struct.auth_master*** %5)
  store %struct.auth_master* %29, %struct.auth_master** %8, align 8
  %30 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %31 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %33 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %36 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %35, i32 0, i32 3
  %37 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %38 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %37, i32 0, i32 6
  %39 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %40 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %39, i32 0, i32 5
  %41 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %42 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %41, i32 0, i32 4
  %43 = call i32 @parse_url(i32 %34, i8** %36, i32* %38, i32* %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %109

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %49 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %48, i32 0, i32 1
  %50 = load %struct.config_strlist*, %struct.config_strlist** %49, align 8
  store %struct.config_strlist* %50, %struct.config_strlist** %9, align 8
  br label %25

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.config_auth*, %struct.config_auth** %6, align 8
  %54 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %53, i32 0, i32 1
  %55 = load %struct.config_strlist*, %struct.config_strlist** %54, align 8
  store %struct.config_strlist* %55, %struct.config_strlist** %9, align 8
  br label %56

56:                                               ; preds = %76, %52
  %57 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %58 = icmp ne %struct.config_strlist* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = call %struct.auth_master* @auth_master_new(%struct.auth_master*** %5)
  store %struct.auth_master* %60, %struct.auth_master** %8, align 8
  %61 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %62 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %64 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @strdup(i32 %65)
  %67 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %68 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %70 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %59
  %74 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %109

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %78 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %77, i32 0, i32 1
  %79 = load %struct.config_strlist*, %struct.config_strlist** %78, align 8
  store %struct.config_strlist* %79, %struct.config_strlist** %9, align 8
  br label %56

80:                                               ; preds = %56
  %81 = load %struct.config_auth*, %struct.config_auth** %6, align 8
  %82 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %81, i32 0, i32 0
  %83 = load %struct.config_strlist*, %struct.config_strlist** %82, align 8
  store %struct.config_strlist* %83, %struct.config_strlist** %9, align 8
  br label %84

84:                                               ; preds = %104, %80
  %85 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %86 = icmp ne %struct.config_strlist* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = call %struct.auth_master* @auth_master_new(%struct.auth_master*** %5)
  store %struct.auth_master* %88, %struct.auth_master** %8, align 8
  %89 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %90 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %92 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @strdup(i32 %93)
  %95 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %96 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %98 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %87
  %102 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %109

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %106 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %105, i32 0, i32 1
  %107 = load %struct.config_strlist*, %struct.config_strlist** %106, align 8
  store %struct.config_strlist* %107, %struct.config_strlist** %9, align 8
  br label %84

108:                                              ; preds = %84
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %101, %73, %45
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.auth_master* @auth_master_new(%struct.auth_master***) #1

declare dso_local i32 @parse_url(i32, i8**, i32*, i32*, i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

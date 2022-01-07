; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.config_strlist*, i32, %struct.TYPE_4__* }
%struct.config_strlist = type { %struct.config_strlist*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"malloc failure in validator-error-info string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @errinf(%struct.module_qstate* %0, i8* %1) #0 {
  %3 = alloca %struct.module_qstate*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_strlist*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %8 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15, %2
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %15
  br label %80

28:                                               ; preds = %24
  %29 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %30 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @regional_alloc(i32 %31, i32 16)
  %33 = inttoptr i64 %32 to %struct.config_strlist*
  store %struct.config_strlist* %33, %struct.config_strlist** %5, align 8
  %34 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %35 = icmp ne %struct.config_strlist* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = call i32 @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %80

38:                                               ; preds = %28
  %39 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %40 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %39, i32 0, i32 0
  store %struct.config_strlist* null, %struct.config_strlist** %40, align 8
  %41 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %42 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @regional_strdup(i32 %43, i8* %44)
  %46 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %47 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %49 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %38
  %53 = call i32 @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %80

54:                                               ; preds = %38
  %55 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %56 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %55, i32 0, i32 0
  %57 = load %struct.config_strlist*, %struct.config_strlist** %56, align 8
  %58 = icmp ne %struct.config_strlist* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %61 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %60, i32 0, i32 0
  %62 = load %struct.config_strlist*, %struct.config_strlist** %61, align 8
  store %struct.config_strlist* %62, %struct.config_strlist** %6, align 8
  br label %63

63:                                               ; preds = %68, %59
  %64 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %65 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %64, i32 0, i32 0
  %66 = load %struct.config_strlist*, %struct.config_strlist** %65, align 8
  %67 = icmp ne %struct.config_strlist* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %70 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %69, i32 0, i32 0
  %71 = load %struct.config_strlist*, %struct.config_strlist** %70, align 8
  store %struct.config_strlist* %71, %struct.config_strlist** %6, align 8
  br label %63

72:                                               ; preds = %63
  %73 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %74 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %75 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %74, i32 0, i32 0
  store %struct.config_strlist* %73, %struct.config_strlist** %75, align 8
  br label %80

76:                                               ; preds = %54
  %77 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %78 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %79 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %78, i32 0, i32 0
  store %struct.config_strlist* %77, %struct.config_strlist** %79, align 8
  br label %80

80:                                               ; preds = %27, %36, %52, %76, %72
  ret void
}

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @regional_strdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

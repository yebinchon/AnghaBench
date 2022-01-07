; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_nexttarget_or_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_nexttarget_or_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.module_env = type { i64 }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"auth zone %s transfer next target lookup\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"auth zone %s transfer failed, wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*)* @xfr_transfer_nexttarget_or_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_transfer_nexttarget_or_end(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  store %struct.auth_xfer* %0, %struct.auth_xfer** %3, align 8
  store %struct.module_env* %1, %struct.module_env** %4, align 8
  %7 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.module_env*, %struct.module_env** %4, align 8
  %13 = getelementptr inbounds %struct.module_env, %struct.module_env* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @log_assert(i32 %16)
  br label %18

18:                                               ; preds = %47, %2
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %18
  %26 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %27 = load %struct.module_env*, %struct.module_env** %4, align 8
  %28 = call i64 @xfr_transfer_lookup_host(%struct.auth_xfer* %26, %struct.module_env* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i64, i64* @verbosity, align 8
  %32 = load i64, i64* @VERB_ALGO, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %36 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %39 = call i32 @dname_str(i32 %37, i8* %38)
  %40 = load i64, i64* @VERB_ALGO, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %42 = call i32 @verbose(i64 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %34, %30
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 0
  %46 = call i32 @lock_basic_unlock(i32* %45)
  br label %105

47:                                               ; preds = %25
  %48 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %49 = load %struct.module_env*, %struct.module_env** %4, align 8
  %50 = call i32 @xfr_transfer_move_to_next_lookup(%struct.auth_xfer* %48, %struct.module_env* %49)
  br label %18

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %72, %51
  %53 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %54 = call i32 @xfr_transfer_end_of_list(%struct.auth_xfer* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %59 = call i32 @xfr_transfer_current_master(%struct.auth_xfer* %58)
  %60 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %61 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %65 = load %struct.module_env*, %struct.module_env** %4, align 8
  %66 = call i64 @xfr_transfer_init_fetch(%struct.auth_xfer* %64, %struct.module_env* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %70 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %69, i32 0, i32 0
  %71 = call i32 @lock_basic_unlock(i32* %70)
  br label %105

72:                                               ; preds = %57
  %73 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %74 = call i32 @xfr_transfer_nextmaster(%struct.auth_xfer* %73)
  br label %52

75:                                               ; preds = %52
  %76 = load i64, i64* @verbosity, align 8
  %77 = load i64, i64* @VERB_ALGO, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %81 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %84 = call i32 @dname_str(i32 %82, i8* %83)
  %85 = load i64, i64* @VERB_ALGO, align 8
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %87 = call i32 @verbose(i64 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %79, %75
  %89 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %90 = call i32 @xfr_transfer_disown(%struct.auth_xfer* %89)
  %91 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %92 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %99 = load %struct.module_env*, %struct.module_env** %4, align 8
  %100 = call i32 @xfr_set_timeout(%struct.auth_xfer* %98, %struct.module_env* %99, i32 1, i32 0)
  br label %101

101:                                              ; preds = %97, %88
  %102 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %103 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %102, i32 0, i32 0
  %104 = call i32 @lock_basic_unlock(i32* %103)
  br label %105

105:                                              ; preds = %101, %68, %43
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @xfr_transfer_lookup_host(%struct.auth_xfer*, %struct.module_env*) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @verbose(i64, i8*, i8*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @xfr_transfer_move_to_next_lookup(%struct.auth_xfer*, %struct.module_env*) #1

declare dso_local i32 @xfr_transfer_end_of_list(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_transfer_current_master(%struct.auth_xfer*) #1

declare dso_local i64 @xfr_transfer_init_fetch(%struct.auth_xfer*, %struct.module_env*) #1

declare dso_local i32 @xfr_transfer_nextmaster(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_transfer_disown(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_set_timeout(%struct.auth_xfer*, %struct.module_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

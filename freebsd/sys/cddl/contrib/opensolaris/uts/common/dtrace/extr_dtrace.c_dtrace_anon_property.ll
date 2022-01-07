; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_anon_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_anon_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dof-data-%d\00", align 1
@dtrace_err_verbose = common dso_local global i32 0, align 4
@dtrace_anon = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to create anonymous state\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@CE_NOTE = common dso_local global i32 0, align 4
@KDI_DTSET_DTRACE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dtrace_anon_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_anon_property() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = call i32 @MUTEX_HELD(i32* @cpu_lock)
  %10 = call i32 @ASSERT(i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %63, %0
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @snprintf(i8* %12, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 1, i32* @dtrace_err_verbose, align 4
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = call i32* @dtrace_dof_property(i8* %15)
  store i32* %16, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* @dtrace_err_verbose, align 4
  br label %66

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 1), align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = call %struct.TYPE_6__* @dtrace_state_create(i32* null, i32* null)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 1), align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @CE_WARN, align 4
  %29 = call i32 @cmn_err(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @dtrace_dof_destroy(i32* %30)
  br label %66

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 (...) @CRED()
  %38 = load i32, i32* @B_TRUE, align 4
  %39 = call i32 @dtrace_dof_slurp(i32* %34, i32* %36, i32 %37, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), i32 0, i32 0, i32 %38)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = call i32 @dtrace_dof_options(i32* %43, %struct.TYPE_6__* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %33
  store i32 0, i32* @dtrace_err_verbose, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @dtrace_dof_destroy(i32* %47)
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call i32 @dtrace_state_destroy(%struct.TYPE_6__* %56)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 1), align 8
  br label %66

58:                                               ; preds = %46
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %11

66:                                               ; preds = %51, %27, %18
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %71 = call i32 @dtrace_enabling_retain(i32* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %77 = call i32 @dtrace_enabling_dump(i32* %76)
  br label %78

78:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @dtrace_dof_property(i8*) #1

declare dso_local %struct.TYPE_6__* @dtrace_state_create(i32*, i32*) #1

declare dso_local i32 @cmn_err(i32, i8*) #1

declare dso_local i32 @dtrace_dof_destroy(i32*) #1

declare dso_local i32 @dtrace_dof_slurp(i32*, i32*, i32, i32**, i32, i32, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @dtrace_dof_options(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @dtrace_state_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @dtrace_enabling_retain(i32*) #1

declare dso_local i32 @dtrace_enabling_dump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

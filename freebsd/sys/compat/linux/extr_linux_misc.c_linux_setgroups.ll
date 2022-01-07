; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_setgroups.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_setgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.ucred* }
%struct.ucred = type { i32, i32* }
%struct.linux_setgroups_args = type { i32, i32 }

@ngroups_max = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_LINUX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PRIV_CRED_SETGROUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_setgroups(%struct.thread* %0, %struct.linux_setgroups_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_setgroups_args*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_setgroups_args* %1, %struct.linux_setgroups_args** %5, align 8
  %13 = load %struct.linux_setgroups_args*, %struct.linux_setgroups_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_setgroups_args, %struct.linux_setgroups_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ngroups_max, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %119

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @M_LINUX, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = call i32* @malloc(i32 %29, i32 %30, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load %struct.linux_setgroups_args*, %struct.linux_setgroups_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_setgroups_args, %struct.linux_setgroups_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @copyin(i32 %35, i32* %36, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  br label %114

45:                                               ; preds = %25
  %46 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %46, %struct.ucred** %6, align 8
  %47 = load %struct.ucred*, %struct.ucred** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @crextend(%struct.ucred* %47, i32 %49)
  %51 = load %struct.thread*, %struct.thread** %4, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  %53 = load %struct.proc*, %struct.proc** %52, align 8
  store %struct.proc* %53, %struct.proc** %12, align 8
  %54 = load %struct.proc*, %struct.proc** %12, align 8
  %55 = call i32 @PROC_LOCK(%struct.proc* %54)
  %56 = load %struct.proc*, %struct.proc** %12, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 0
  %58 = load %struct.ucred*, %struct.ucred** %57, align 8
  store %struct.ucred* %58, %struct.ucred** %7, align 8
  %59 = load %struct.ucred*, %struct.ucred** %6, align 8
  %60 = load %struct.ucred*, %struct.ucred** %7, align 8
  %61 = call i32 @crcopy(%struct.ucred* %59, %struct.ucred* %60)
  %62 = load %struct.ucred*, %struct.ucred** %7, align 8
  %63 = load i32, i32* @PRIV_CRED_SETGROUPS, align 4
  %64 = call i32 @priv_check_cred(%struct.ucred* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %45
  %67 = load %struct.proc*, %struct.proc** %12, align 8
  %68 = call i32 @PROC_UNLOCK(%struct.proc* %67)
  %69 = load %struct.ucred*, %struct.ucred** %6, align 8
  %70 = call i32 @crfree(%struct.ucred* %69)
  br label %114

71:                                               ; preds = %45
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.ucred*, %struct.ucred** %6, align 8
  %78 = getelementptr inbounds %struct.ucred, %struct.ucred* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ucred*, %struct.ucred** %6, align 8
  %80 = getelementptr inbounds %struct.ucred, %struct.ucred* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %87, %74
  %85 = load i32, i32* %10, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %10, align 4
  br label %84

100:                                              ; preds = %84
  br label %104

101:                                              ; preds = %71
  %102 = load %struct.ucred*, %struct.ucred** %6, align 8
  %103 = getelementptr inbounds %struct.ucred, %struct.ucred* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %100
  %105 = load %struct.proc*, %struct.proc** %12, align 8
  %106 = call i32 @setsugid(%struct.proc* %105)
  %107 = load %struct.proc*, %struct.proc** %12, align 8
  %108 = load %struct.ucred*, %struct.ucred** %6, align 8
  %109 = call i32 @proc_set_cred(%struct.proc* %107, %struct.ucred* %108)
  %110 = load %struct.proc*, %struct.proc** %12, align 8
  %111 = call i32 @PROC_UNLOCK(%struct.proc* %110)
  %112 = load %struct.ucred*, %struct.ucred** %7, align 8
  %113 = call i32 @crfree(%struct.ucred* %112)
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %104, %66, %44
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @M_LINUX, align 4
  %117 = call i32 @free(i32* %115, i32 %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %23
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @crextend(%struct.ucred*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @crcopy(%struct.ucred*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

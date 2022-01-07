; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_privsep_preauth_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_privsep_preauth_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@privsep_chroot = common dso_local global i64 0, align 8
@_PATH_PRIVSEP_CHROOT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"chroot(\22%s\22): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"chdir(\22/\22): %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"privsep user:group %u:%u\00", align 1
@privsep_pw = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"setgroups: %.100s\00", align 1
@options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @privsep_preauth_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @privsep_preauth_child() #0 {
  %1 = alloca [1 x i64], align 8
  %2 = call i32 (...) @privsep_challenge_enable()
  %3 = call i32 (...) @reseed_prngs()
  %4 = call i32 (...) @demote_sensitive_data()
  %5 = load i64, i64* @privsep_chroot, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %0
  %8 = load i32, i32* @_PATH_PRIVSEP_CHROOT_DIR, align 4
  %9 = call i32 @chroot(i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* @_PATH_PRIVSEP_CHROOT_DIR, align 4
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  br label %16

16:                                               ; preds = %11, %7
  %17 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @privsep_pw, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @privsep_pw, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @debug3(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @privsep_pw, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %1, i64 0, i64 0
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds [1 x i64], [1 x i64]* %1, i64 0, i64 0
  %38 = call i64 @setgroups(i32 1, i64* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %23
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @privsep_pw, align 8
  %46 = call i32 @permanently_set_uid(%struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %44, %0
  ret void
}

declare dso_local i32 @privsep_challenge_enable(...) #1

declare dso_local i32 @reseed_prngs(...) #1

declare dso_local i32 @demote_sensitive_data(...) #1

declare dso_local i32 @chroot(i32) #1

declare dso_local i32 @fatal(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @debug3(i8*, i32, i32) #1

declare dso_local i64 @setgroups(i32, i64*) #1

declare dso_local i32 @permanently_set_uid(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

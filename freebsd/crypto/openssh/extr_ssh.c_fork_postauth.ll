; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_fork_postauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_fork_postauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@need_controlpersist_detach = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"forking to background\00", align 1
@fork_after_authentication_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"daemon() failed: %.200s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fork_postauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fork_postauth() #0 {
  %1 = load i64, i64* @need_controlpersist_detach, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @control_persist_detach()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @fork_after_authentication_flag, align 8
  %7 = call i64 @daemon(i32 1, i32 1)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @strerror(i32 %10)
  %12 = call i32 @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

declare dso_local i32 @control_persist_detach(...) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

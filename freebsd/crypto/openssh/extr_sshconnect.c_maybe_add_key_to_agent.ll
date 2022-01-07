; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_maybe_add_key_to_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_maybe_add_key_to_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sshkey = type { i32 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"no authentication agent, not adding key\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Add key %s (%s) to agent?\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"user denied adding this key\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"identity added to agent: %s\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"could not add identity to agent: %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maybe_add_key_to_agent(i8* %0, %struct.sshkey* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sshkey* %1, %struct.sshkey** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %50

14:                                               ; preds = %4
  %15 = call i32 @ssh_get_authentication_socket(i32* %9)
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @debug3(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %50

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @ask_permission(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = call i32 @debug3(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @close(i32 %29)
  br label %50

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %36 = icmp eq i32 %35, 3
  %37 = zext i1 %36 to i32
  %38 = call i32 @ssh_add_identity_constrained(i32 %32, %struct.sshkey* %33, i8* %34, i32 0, i32 %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %47

43:                                               ; preds = %31
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @close(i32 %48)
  br label %50

50:                                               ; preds = %47, %27, %17, %13
  ret void
}

declare dso_local i32 @ssh_get_authentication_socket(i32*) #1

declare dso_local i32 @debug3(i8*) #1

declare dso_local i32 @ask_permission(i8*, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ssh_add_identity_constrained(i32, %struct.sshkey*, i8*, i32, i32, i32) #1

declare dso_local i32 @debug(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

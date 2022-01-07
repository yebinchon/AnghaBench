; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32* }

@.str = private unnamed_addr constant [50 x i8] c"input_userauth_failure: no authentication context\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Authenticated with partial success.\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Authentications that can continue: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_userauth_failure(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %11 = load %struct.ssh*, %struct.ssh** %6, align 8
  %12 = getelementptr inbounds %struct.ssh, %struct.ssh* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.ssh*, %struct.ssh** %6, align 8
  %20 = call i32 @sshpkt_get_cstring(%struct.ssh* %19, i8** %8, i32* null)
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.ssh*, %struct.ssh** %6, align 8
  %24 = call i32 @sshpkt_get_u8(%struct.ssh* %23, i64* %9)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.ssh*, %struct.ssh** %6, align 8
  %28 = call i32 @sshpkt_get_end(%struct.ssh* %27)
  store i32 %28, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %18
  br label %44

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @pubkey_reset(i32* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @userauth(i32* %41, i8* %42)
  store i8* null, i8** %8, align 8
  br label %44

44:                                               ; preds = %38, %30
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @free(i8* %45)
  ret i32 0
}

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @sshpkt_get_cstring(%struct.ssh*, i8**, i32*) #1

declare dso_local i32 @sshpkt_get_u8(%struct.ssh*, i64*) #1

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #1

declare dso_local i32 @verbose(i8*) #1

declare dso_local i32 @pubkey_reset(i32*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32 @userauth(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

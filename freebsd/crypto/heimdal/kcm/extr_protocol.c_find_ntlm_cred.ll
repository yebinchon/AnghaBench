; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_find_ntlm_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_find_ntlm_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_ntlm_cred = type { i32, i32, i32, i32, %struct.kcm_ntlm_cred* }

@ntlm_head = common dso_local global %struct.kcm_ntlm_cred* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kcm_ntlm_cred* (i8*, i8*, i32*)* @find_ntlm_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kcm_ntlm_cred* @find_ntlm_cred(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.kcm_ntlm_cred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kcm_ntlm_cred*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** @ntlm_head, align 8
  store %struct.kcm_ntlm_cred* %9, %struct.kcm_ntlm_cred** %8, align 8
  br label %10

10:                                               ; preds = %49, %3
  %11 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %8, align 8
  %12 = icmp ne %struct.kcm_ntlm_cred* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %8, align 8
  %22 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i8* %20, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %19, %13
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %8, align 8
  %32 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strcmp(i8* %30, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29, %26
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %8, align 8
  %39 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %8, align 8
  %42 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @kcm_is_same_session(i32* %37, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %8, align 8
  store %struct.kcm_ntlm_cred* %47, %struct.kcm_ntlm_cred** %4, align 8
  br label %54

48:                                               ; preds = %36, %29, %19
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %8, align 8
  %51 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %50, i32 0, i32 4
  %52 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %51, align 8
  store %struct.kcm_ntlm_cred* %52, %struct.kcm_ntlm_cred** %8, align 8
  br label %10

53:                                               ; preds = %10
  store %struct.kcm_ntlm_cred* null, %struct.kcm_ntlm_cred** %4, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %4, align 8
  ret %struct.kcm_ntlm_cred* %55
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @kcm_is_same_session(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_choose_hostkeyalg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_choose_hostkeyalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kex = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"kex: host key algorithm: %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(no match)\00", align 1
@SSH_ERR_NO_HOSTKEY_ALG_MATCH = common dso_local global i32 0, align 4
@KEY_UNSPEC = common dso_local global i64 0, align 8
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kex*, i8*, i8*)* @choose_hostkeyalg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_hostkeyalg(%struct.kex* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kex*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.kex* %0, %struct.kex** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i8* @match_list(i8* %8, i8* %9, i32* null)
  %11 = load %struct.kex*, %struct.kex** %5, align 8
  %12 = getelementptr inbounds %struct.kex, %struct.kex* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.kex*, %struct.kex** %5, align 8
  %14 = getelementptr inbounds %struct.kex, %struct.kex* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.kex*, %struct.kex** %5, align 8
  %19 = getelementptr inbounds %struct.kex, %struct.kex* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i8* [ %20, %17 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 @debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.kex*, %struct.kex** %5, align 8
  %26 = getelementptr inbounds %struct.kex, %struct.kex* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @SSH_ERR_NO_HOSTKEY_ALG_MATCH, align 4
  store i32 %30, i32* %4, align 4
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.kex*, %struct.kex** %5, align 8
  %33 = getelementptr inbounds %struct.kex, %struct.kex* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @sshkey_type_from_name(i8* %34)
  %36 = load %struct.kex*, %struct.kex** %5, align 8
  %37 = getelementptr inbounds %struct.kex, %struct.kex* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.kex*, %struct.kex** %5, align 8
  %39 = getelementptr inbounds %struct.kex, %struct.kex* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KEY_UNSPEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %31
  %46 = load %struct.kex*, %struct.kex** %5, align 8
  %47 = getelementptr inbounds %struct.kex, %struct.kex* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @sshkey_ecdsa_nid_from_name(i8* %48)
  %50 = load %struct.kex*, %struct.kex** %5, align 8
  %51 = getelementptr inbounds %struct.kex, %struct.kex* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %43, %29
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i8* @match_list(i8*, i8*, i32*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i64 @sshkey_type_from_name(i8*) #1

declare dso_local i32 @sshkey_ecdsa_nid_from_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

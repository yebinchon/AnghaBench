; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_del_ntlm_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_del_ntlm_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_ntlm_cred = type { %struct.kcm_ntlm_cred*, i32, i32, i32, i32 }

@ntlm_head = common dso_local global %struct.kcm_ntlm_cred* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_del_ntlm_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_del_ntlm_cred(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.kcm_ntlm_cred**, align 8
  %12 = alloca %struct.kcm_ntlm_cred*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @krb5_ret_stringz(i32* %16, i8** %13)
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %15, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %75

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @krb5_ret_stringz(i32* %22, i8** %14)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %75

27:                                               ; preds = %21
  store %struct.kcm_ntlm_cred** @ntlm_head, %struct.kcm_ntlm_cred*** %11, align 8
  br label %28

28:                                               ; preds = %70, %27
  %29 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  %30 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %29, align 8
  %31 = icmp ne %struct.kcm_ntlm_cred* %30, null
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  %35 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %34, align 8
  %36 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i8* %33, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %32
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  %43 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %42, align 8
  %44 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @strcmp(i8* %41, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  %51 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %50, align 8
  %52 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  %55 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %54, align 8
  %56 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @kcm_is_same_session(i32* %49, i32 %53, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  %62 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %61, align 8
  store %struct.kcm_ntlm_cred* %62, %struct.kcm_ntlm_cred** %12, align 8
  %63 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %64 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %63, i32 0, i32 0
  %65 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %64, align 8
  %66 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  store %struct.kcm_ntlm_cred* %65, %struct.kcm_ntlm_cred** %66, align 8
  %67 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %68 = call i32 @free_cred(%struct.kcm_ntlm_cred* %67)
  br label %74

69:                                               ; preds = %48, %40, %32
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.kcm_ntlm_cred**, %struct.kcm_ntlm_cred*** %11, align 8
  %72 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %71, align 8
  %73 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %72, i32 0, i32 0
  store %struct.kcm_ntlm_cred** %73, %struct.kcm_ntlm_cred*** %11, align 8
  br label %28

74:                                               ; preds = %60, %28
  br label %75

75:                                               ; preds = %74, %26, %20
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i64, i64* %15, align 8
  ret i64 %80
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @kcm_is_same_session(i32*, i32, i32) #1

declare dso_local i32 @free_cred(%struct.kcm_ntlm_cred*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

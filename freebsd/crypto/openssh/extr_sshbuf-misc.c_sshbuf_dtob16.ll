; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dtob16.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dtob16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@__const.sshbuf_dtob16.hex = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sshbuf_dtob16(%struct.sshbuf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [17 x i8], align 16
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  %10 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %11 = call i64 @sshbuf_len(%struct.sshbuf* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %13 = call i32* @sshbuf_ptr(%struct.sshbuf* %12)
  store i32* %13, i32** %7, align 8
  %14 = bitcast [17 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.sshbuf_dtob16.hex, i32 0, i32 0), i64 17, i1 false)
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %71

19:                                               ; preds = %1
  %20 = load i32, i32* @SIZE_MAX, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = mul i64 %26, 2
  %28 = add i64 %27, 1
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store i8* null, i8** %2, align 8
  br label %71

32:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %50, align 1
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 %58, i8* %62, align 1
  br label %63

63:                                               ; preds = %37
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %33

66:                                               ; preds = %33
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %66, %31, %17
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32* @sshbuf_ptr(%struct.sshbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

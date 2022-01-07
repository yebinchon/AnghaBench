; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_ilnp64_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_ilnp64_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%4x:%4x:%4x:%4x%n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_ILNP64 = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_ilnp64_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11, i32* %13)
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %13, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = trunc i64 %26 to i32
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strpbrk(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %23, %19
  %34 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_ILNP64, align 4
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @htons(i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @htons(i32 %45)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = bitcast [4 x i32]* %12 to i32**
  %50 = call i32 @memmove(i32* %48, i32** %49, i32 16)
  %51 = load i64*, i64** %7, align 8
  store i64 16, i64* %51, align 8
  %52 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %35, %33, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strpbrk(i8*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memmove(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

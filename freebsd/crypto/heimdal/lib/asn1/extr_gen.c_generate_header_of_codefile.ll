; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_generate_header_of_codefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_generate_header_of_codefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@codefile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s_%s.x\00", align 1
@STEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fopen %s\00", align 1
@logfile = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [203 x i8] c"/* Generated from %s */\0A/* Do not edit */\0A\0A#define  ASN1_LIB\0A\0A#include <stdio.h>\0A#include <stdlib.h>\0A#include <time.h>\0A#include <string.h>\0A#include <errno.h>\0A#include <limits.h>\0A#include <krb5-types.h>\0A\00", align 1
@orig_filename = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"#include <%s>\0A#include <%s>\0A\00", align 1
@header = common dso_local global i8* null, align 8
@privheader = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [118 x i8] c"#include <asn1_err.h>\0A#include <der.h>\0A#include <der-private.h>\0A#include <asn1-template.h>\0A#include <parse_units.h>\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_header_of_codefile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load i32*, i32** @codefile, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @abort() #3
  unreachable

8:                                                ; preds = %1
  %9 = load i32, i32* @STEM, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @asprintf(i8** %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %8
  %17 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %20, i32** @codefile, align 8
  %21 = load i32*, i32** @codefile, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @logfile, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @free(i8* %32)
  store i8* null, i8** %3, align 8
  %34 = load i32*, i32** @codefile, align 8
  %35 = load i8*, i8** @orig_filename, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.5, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** @codefile, align 8
  %38 = load i8*, i8** @header, align 8
  %39 = load i8*, i8** @privheader, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i32*, i32** @codefile, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

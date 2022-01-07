; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_keyword-gen.c_populate_symb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_keyword-gen.c_populate_symb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TOK_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to open yacc/bison header file\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"#define %s %d\00", align 1
@symb = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"MAX_TOK_LEN %d too small for '%s'\0AEdit keyword-gen.c to raise.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @populate_symb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAX_TOK_LEN, align 4
  %9 = mul nsw i32 2, %8
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MAX_TOK_LEN, align 4
  %14 = mul nsw i32 2, %13
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* null, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @exit(i32 4) #4
  unreachable

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %66, %24
  %26 = trunc i64 %10 to i32
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @fgets(i8* %12, i32 %26, i32* %27)
  %29 = icmp ne i32* null, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %16, i32* %7)
  %32 = icmp eq i32 2, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, i8* %16, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 84, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, i8* %16, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 95, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** @symb, align 8
  %49 = call i32 @COUNTOF(i32* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = call i32 @estrdup(i8* %16)
  %53 = load i32*, i32** @symb, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = call i32 @strlen(i8* %16)
  %58 = load i32, i32* @MAX_TOK_LEN, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* @MAX_TOK_LEN, align 4
  %63 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %62, i8* %16)
  %64 = call i32 @exit(i32 10) #4
  unreachable

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %46, %43, %38, %33, %30
  br label %25

67:                                               ; preds = %25
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @estrdup(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

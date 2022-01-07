; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_look_up_one_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_look_up_one_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"qSymbol:\00", align 1
@remote_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Malformed response to qSymbol, ignoring.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @look_up_one_symbol(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [266 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = getelementptr inbounds [266 x i8], [266 x i8]* %6, i64 0, i64 0
  %11 = call i32 @strcpy(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds [266 x i8], [266 x i8]* %6, i64 0, i64 0
  %13 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @hexify(i8* %15, i8* %16, i32 %18)
  %20 = getelementptr inbounds [266 x i8], [266 x i8]* %6, i64 0, i64 0
  %21 = call i64 @putpkt(i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = getelementptr inbounds [266 x i8], [266 x i8]* %6, i64 0, i64 0
  %26 = call i32 @getpkt(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %85

30:                                               ; preds = %24
  %31 = getelementptr inbounds [266 x i8], [266 x i8]* %6, i64 0, i64 0
  %32 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = call i64 @strncmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i64, i64* @remote_debug, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fflush(i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  store i32 -1, i32* %3, align 4
  br label %85

44:                                               ; preds = %30
  %45 = getelementptr inbounds [266 x i8], [266 x i8]* %6, i64 0, i64 0
  %46 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %62, %44
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 58
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ false, %50 ], [ %59, %55 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  br label %50

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %65
  store i32 0, i32* %3, align 4
  br label %85

75:                                               ; preds = %69
  %76 = load i32*, i32** %5, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @decode_address(i32* %76, i8* %77, i32 %83)
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %75, %74, %43, %29, %23
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @hexify(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @decode_address(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

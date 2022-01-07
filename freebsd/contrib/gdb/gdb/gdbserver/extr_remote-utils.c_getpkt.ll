; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_getpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_getpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[getpkt: discarding char '%c']\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Bad checksum, sentsum=0x%x, csum=0x%x, buf=%s\0A\00", align 1
@remote_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"getpkt (\22%s\22);  [sending ack] \0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"[sent ack]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getpkt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  br label %9

9:                                                ; preds = %1, %66
  store i8 0, i8* %5, align 1
  br label %10

10:                                               ; preds = %9, %28
  %11 = call i32 (...) @readchar()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 36
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %29

15:                                               ; preds = %10
  %16 = load i64, i64* @remote_debug, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fflush(i32 %22)
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %106

28:                                               ; preds = %24
  br label %10

29:                                               ; preds = %14
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %29, %40
  %32 = call i32 (...) @readchar()
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %106

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 35
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i32, i32* %8, align 4
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %5, align 1
  br label %31

50:                                               ; preds = %39
  %51 = load i8*, i8** %4, align 8
  store i8 0, i8* %51, align 1
  %52 = call i32 (...) @readchar()
  %53 = call zeroext i8 @fromhex(i32 %52)
  store i8 %53, i8* %6, align 1
  %54 = call i32 (...) @readchar()
  %55 = call zeroext i8 @fromhex(i32 %54)
  store i8 %55, i8* %7, align 1
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 4
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = icmp eq i32 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %80

66:                                               ; preds = %50
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8, i8* %6, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 4
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75, i8* %76)
  %78 = load i32, i32* @remote_desc, align 4
  %79 = call i32 @write(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %9

80:                                               ; preds = %65
  %81 = load i64, i64* @remote_debug, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fflush(i32 %87)
  br label %89

89:                                               ; preds = %83, %80
  %90 = load i32, i32* @remote_desc, align 4
  %91 = call i32 @write(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %92 = load i64, i64* @remote_debug, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @fflush(i32 %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i8*, i8** %4, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %99, %35, %27
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @readchar(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local zeroext i8 @fromhex(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

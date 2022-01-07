; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lisp.c_lisp_hdr_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lisp.c_lisp_hdr_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@lisp_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown-type-%u\00", align 1
@LISP_MAP_REGISTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c" flags [%s],\00", align 1
@map_register_hdr_flag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@LISP_MAP_NOTIFY = common dso_local global i64 0, align 8
@map_notify_hdr_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @lisp_hdr_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lisp_hdr_flag(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @extract_lisp_type(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load i32, i32* @lisp_type, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @tok2str(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  %21 = call i32 @ND_PRINT(%struct.TYPE_7__* %20)
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load i32, i32* @lisp_type, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @tok2str(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  %29 = call i32 @ND_PRINT(%struct.TYPE_7__* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @LISP_MAP_REGISTER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = load i32, i32* @map_register_hdr_flag, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @EXTRACT_32BITS(%struct.TYPE_8__* %37)
  %39 = call i32 @bittok2str(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_7__*
  %42 = call i32 @ND_PRINT(%struct.TYPE_7__* %41)
  br label %57

43:                                               ; preds = %30
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @LISP_MAP_NOTIFY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = load i32, i32* @map_notify_hdr_flag, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32 @EXTRACT_32BITS(%struct.TYPE_8__* %50)
  %52 = call i32 @bittok2str(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_7__*
  %55 = call i32 @ND_PRINT(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %47, %43
  br label %57

57:                                               ; preds = %56, %34
  br label %58

58:                                               ; preds = %57, %14
  ret void
}

declare dso_local i64 @extract_lisp_type(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

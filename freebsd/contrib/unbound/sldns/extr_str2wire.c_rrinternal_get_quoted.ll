; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_quoted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\22\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32)* @rrinternal_get_quoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_get_quoted(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @sldns_rdf_type_maybe_quoted(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @sldns_buffer_remaining(i32* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @sldns_buffer_remaining(i32* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @sldns_buffer_current(i32* %21)
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ false, %16 ], [ %25, %20 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sldns_buffer_skip(i32* %29, i32 1)
  br label %16

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @sldns_buffer_remaining(i32* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @sldns_buffer_current(i32* %36)
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 34
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @sldns_buffer_skip(i32* %43, i32 1)
  store i32 1, i32* %4, align 4
  br label %47

45:                                               ; preds = %35, %31
  br label %46

46:                                               ; preds = %45, %11, %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @sldns_rdf_type_maybe_quoted(i32) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i8* @sldns_buffer_current(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_pkt_dname_tolower.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_pkt_dname_tolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMPRESS_PTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkt_dname_tolower(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @sldns_buffer_end(i32* %8)
  %10 = icmp uge i32* %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %81

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* %13, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %77, %47, %12
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @LABEL_IS_PTR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @PTR_OFFSET(i32 %24, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @sldns_buffer_limit(i32* %28)
  %30 = icmp uge i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %81

32:                                               ; preds = %23
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @PTR_OFFSET(i32 %34, i32 %36)
  %38 = call i32* @sldns_buffer_at(i32* %33, i64 %37)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @MAX_COMPRESS_PTRS, align 4
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %81

47:                                               ; preds = %32
  br label %16

48:                                               ; preds = %19
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32*, i32** %3, align 8
  %54 = call i32* @sldns_buffer_end(i32* %53)
  %55 = icmp uge i32* %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %81

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %63, align 4
  %65 = trunc i32 %64 to i8
  %66 = call i64 @tolower(i8 zeroext %65)
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %4, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %4, align 8
  br label %58

71:                                               ; preds = %58
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = call i32* @sldns_buffer_end(i32* %73)
  %75 = icmp uge i32* %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %81

77:                                               ; preds = %71
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %4, align 8
  %80 = load i32, i32* %78, align 4
  store i32 %80, i32* %5, align 4
  br label %16

81:                                               ; preds = %11, %31, %46, %56, %76, %16
  ret void
}

declare dso_local i32* @sldns_buffer_end(i32*) #1

declare dso_local i64 @LABEL_IS_PTR(i32) #1

declare dso_local i64 @PTR_OFFSET(i32, i32) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32* @sldns_buffer_at(i32*, i64) #1

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

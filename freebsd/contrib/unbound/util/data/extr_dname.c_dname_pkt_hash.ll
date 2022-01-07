; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_pkt_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_pkt_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_LABELLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dname_pkt_hash(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @LDNS_MAX_LABELLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %60, %26, %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @LABEL_IS_PTR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_OFFSET(i32 %28, i32 %30)
  %32 = call i32* @sldns_buffer_at(i32* %27, i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %5, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %9, align 4
  br label %19

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @LDNS_MAX_LABELLEN, align 4
  %39 = icmp sle i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @log_assert(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %42, i32* %43, align 16
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %48, %36
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = call i64 @tolower(i8 zeroext %51)
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %15, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  br label %44

60:                                               ; preds = %44
  %61 = getelementptr inbounds i32, i32* %15, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @hashlittle(i32* %15, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %5, align 8
  %68 = load i32, i32* %66, align 4
  store i32 %68, i32* %9, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @LABEL_IS_PTR(i32) #2

declare dso_local i32* @sldns_buffer_at(i32*, i32) #2

declare dso_local i32 @PTR_OFFSET(i32, i32) #2

declare dso_local i32 @log_assert(i32) #2

declare dso_local i64 @tolower(i8 zeroext) #2

declare dso_local i32 @hashlittle(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

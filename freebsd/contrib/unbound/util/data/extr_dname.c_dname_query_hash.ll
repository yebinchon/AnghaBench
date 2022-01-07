; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_query_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_query_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_LABELLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dname_query_hash(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @LDNS_MAX_LABELLEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %3, align 8
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LDNS_MAX_LABELLEN, align 4
  %23 = icmp sle i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @log_assert(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %26, i32* %27, align 16
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %32, %20
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = call i64 @tolower(i8 zeroext %35)
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %13, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %3, align 8
  br label %28

44:                                               ; preds = %28
  %45 = getelementptr inbounds i32, i32* %13, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @hashlittle(i32* %13, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %3, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load i32, i32* %4, align 4
  %55 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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

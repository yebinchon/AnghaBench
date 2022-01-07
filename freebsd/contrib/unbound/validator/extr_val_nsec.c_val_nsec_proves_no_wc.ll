; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_no_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_no_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_nsec_proves_no_wc(%struct.ub_packed_rrset_key* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %17 = call i32* @nsec_closest_encloser(i32* %15, %struct.ub_packed_rrset_key* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %19 = add nsw i32 %18, 3
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @dname_count_labels(i32* %27)
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @dname_count_labels(i32* %29)
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %10, align 8
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dname_remove_labels(i32** %10, i64* %11, i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %41 = sub nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

45:                                               ; preds = %34
  %46 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 1, i32* %46, align 16
  %47 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 42, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %22, i64 2
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @memmove(i32* %48, i32* %49, i64 %50)
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %53 = call i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %52, i32* %22)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %26
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %55, %44, %25
  %59 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @nsec_closest_encloser(i32*, %struct.ub_packed_rrset_key*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @dname_remove_labels(i32**, i64*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

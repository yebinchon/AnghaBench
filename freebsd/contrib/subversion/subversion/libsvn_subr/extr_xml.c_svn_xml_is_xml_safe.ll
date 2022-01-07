; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_is_xml_safe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_is_xml_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_CTYPE_ASCII_TAB = common dso_local global i8 0, align 1
@SVN_CTYPE_ASCII_LINEFEED = common dso_local global i8 0, align 1
@SVN_CTYPE_ASCII_CARRIAGERETURN = common dso_local global i8 0, align 1
@SVN_CTYPE_ASCII_DELETE = common dso_local global i8 0, align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_xml_is_xml_safe(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @svn_utf__is_valid(i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %59, %19
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %8, align 1
  %28 = load i8, i8* %8, align 1
  %29 = call i64 @svn_ctype_iscntrl(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @SVN_CTYPE_ASCII_TAB, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @SVN_CTYPE_ASCII_LINEFEED, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @SVN_CTYPE_ASCII_CARRIAGERETURN, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @SVN_CTYPE_ASCII_DELETE, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %49, %43, %37, %31
  br label %58

58:                                               ; preds = %57, %25
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  br label %21

62:                                               ; preds = %21
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %55, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @svn_utf__is_valid(i8*, i32) #1

declare dso_local i64 @svn_ctype_iscntrl(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_normalize_cstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_normalize_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@UTF8PROC_CASEFOLD = common dso_local global i32 0, align 4
@UTF8PROC_STRIPMARK = common dso_local global i32 0, align 4
@UTF8PROC_COMPOSE = common dso_local global i32 0, align 4
@UTF8PROC_STABLE = common dso_local global i32 0, align 4
@SVN_ERR_UTF8PROC_ERROR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i64, i64, %struct.TYPE_5__*)* @normalize_cstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @normalize_cstring(i32* %0, i8* %1, i32 %2, i64 %3, i64 %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* %11, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i32, i32* @UTF8PROC_CASEFOLD, align 4
  %20 = load i32, i32* %14, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %18, %6
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @UTF8PROC_STRIPMARK, align 4
  %27 = load i32, i32* %14, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %14, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = call i32 @unicode_decomposition(i32 %30, i8* %31, i32 %32, %struct.TYPE_5__* %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = add i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = call i32 @svn_membuf__resize(%struct.TYPE_5__* %38, i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @UTF8PROC_COMPOSE, align 4
  %50 = load i32, i32* @UTF8PROC_STABLE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @utf8proc_reencode(i32 %47, i32 %48, i32 %51)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %37, %29
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @SVN_ERR_UTF8PROC_ERROR, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @utf8proc_errmsg(i32 %58)
  %60 = call i32 @gettext(i32 %59)
  %61 = call i32* @svn_error_create(i32 %57, i32* null, i32 %60)
  store i32* %61, i32** %7, align 8
  br label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %7, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32*, i32** %7, align 8
  ret i32* %67
}

declare dso_local i32 @unicode_decomposition(i32, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @svn_membuf__resize(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @utf8proc_reencode(i32, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @gettext(i32) #1

declare dso_local i32 @utf8proc_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

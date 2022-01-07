; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_g_charclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_g_charclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cclass = type { i8* }

@cclasses = common dso_local global %struct.cclass* null, align 8
@M_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @g_charclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_charclass(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cclass*, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %6, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @g_strchr(i8* %16, i8 signext 58)
  store i8* %17, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 93
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i32 1, i32* %3, align 4
  br label %88

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.cclass*, %struct.cclass** @cclasses, align 8
  store %struct.cclass* %32, %struct.cclass** %9, align 8
  br label %33

33:                                               ; preds = %57, %26
  %34 = load %struct.cclass*, %struct.cclass** %9, align 8
  %35 = getelementptr inbounds %struct.cclass, %struct.cclass* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.cclass*, %struct.cclass** %9, align 8
  %41 = getelementptr inbounds %struct.cclass, %struct.cclass* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @g_strncmp(i8* %39, i8* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %38
  %47 = load %struct.cclass*, %struct.cclass** %9, align 8
  %48 = getelementptr inbounds %struct.cclass, %struct.cclass* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %60

56:                                               ; preds = %46, %38
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.cclass*, %struct.cclass** %9, align 8
  %59 = getelementptr inbounds %struct.cclass, %struct.cclass* %58, i32 1
  store %struct.cclass* %59, %struct.cclass** %9, align 8
  br label %33

60:                                               ; preds = %55, %33
  %61 = load %struct.cclass*, %struct.cclass** %9, align 8
  %62 = getelementptr inbounds %struct.cclass, %struct.cclass* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %88

66:                                               ; preds = %60
  %67 = load i32, i32* @M_CLASS, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 %68, i8* %69, align 1
  %71 = load %struct.cclass*, %struct.cclass** %9, align 8
  %72 = load %struct.cclass*, %struct.cclass** @cclasses, align 8
  %73 = getelementptr inbounds %struct.cclass, %struct.cclass* %72, i64 0
  %74 = ptrtoint %struct.cclass* %71 to i64
  %75 = ptrtoint %struct.cclass* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 8
  %78 = trunc i64 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = load i8**, i8*** %5, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 3
  %85 = load i8**, i8*** %4, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %84
  store i8* %87, i8** %85, align 8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %66, %65, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @g_strchr(i8*, i8 signext) #1

declare dso_local i32 @g_strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8***, i32*, i8*)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_file(i8*** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store i8*** %0, i8**** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8***, i8**** %5, align 8
  %11 = load i8**, i8*** %10, align 8
  store i8** %11, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %30, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load i8**, i8*** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @free(i8* %27)
  store i32 0, i32* %4, align 4
  br label %67

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load i8***, i8**** %5, align 8
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i8** @realloc(i8** %35, i32 %41)
  store i8** %42, i8*** %8, align 8
  %43 = load i8**, i8*** %8, align 8
  %44 = icmp eq i8** %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %67

49:                                               ; preds = %33
  %50 = load i8*, i8** %7, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  store i8* %50, i8** %55, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %56, i64 %60
  store i8* null, i8** %61, align 8
  %62 = load i8**, i8*** %8, align 8
  %63 = load i8***, i8**** %5, align 8
  store i8** %62, i8*** %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %49, %45, %26
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_add_filename_to_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_add_filename_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8***, i32*, i32*)* @add_filename_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_filename_to_list(i8* %0, i8* %1, i8* %2, i8*** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %14, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %24, align 4
  %27 = load i8***, i8**** %10, align 8
  %28 = load i8**, i8*** %27, align 8
  %29 = bitcast i8** %28 to i8*
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @xrealloc(i8* %29, i32 %34)
  %36 = inttoptr i64 %35 to i8**
  %37 = load i8***, i8**** %10, align 8
  store i8** %36, i8*** %37, align 8
  br label %38

38:                                               ; preds = %23, %6
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %43, 5
  %45 = call i8* @xmalloc(i64 %44)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcpy(i8* %46, i8* %47)
  br label %96

49:                                               ; preds = %38
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 5
  %56 = call i8* @xmalloc(i64 %55)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = call i32 @strcpy(i8* %57, i8* %64)
  br label %95

66:                                               ; preds = %49
  %67 = load i64, i64* %14, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = add i64 %67, %72
  %74 = add i64 %73, 5
  %75 = call i8* @xmalloc(i64 %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @strncpy(i8* %76, i8* %77, i32 %83)
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = getelementptr inbounds i8, i8* %85, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %13, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strcat(i8* %92, i8* %93)
  br label %95

95:                                               ; preds = %66, %53
  br label %96

96:                                               ; preds = %95, %42
  %97 = load i8*, i8** %13, align 8
  %98 = load i8***, i8**** %10, align 8
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  store i8* %97, i8** %103, align 8
  %104 = load i8***, i8**** %10, align 8
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %105, i64 %109
  store i8* null, i8** %110, align 8
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

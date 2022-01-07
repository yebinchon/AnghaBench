; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_completion_list_add_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_completion_list_add_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@return_val_index = common dso_local global i32 0, align 4
@return_val_size = common dso_local global i32 0, align 4
@return_val = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i8*)* @completion_list_add_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @completion_list_add_name(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @strncmp(i8* %14, i8* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %108

20:                                               ; preds = %5
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 5
  %28 = call i8* @xmalloc(i64 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcpy(i8* %29, i8* %30)
  br label %81

32:                                               ; preds = %20
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ugt i8* %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 5
  %40 = call i8* @xmalloc(i64 %39)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %42, i64 %47
  %49 = call i32 @strcpy(i8* %41, i8* %48)
  br label %80

50:                                               ; preds = %32
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %52, %57
  %59 = add nsw i64 %58, 5
  %60 = call i8* @xmalloc(i64 %59)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @strncpy(i8* %61, i8* %62, i32 %68)
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = getelementptr inbounds i8, i8* %70, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strcat(i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %50, %36
  br label %81

81:                                               ; preds = %80, %24
  %82 = load i32, i32* @return_val_index, align 4
  %83 = add nsw i32 %82, 3
  %84 = load i32, i32* @return_val_size, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32, i32* @return_val_size, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* @return_val_size, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i8**, i8*** @return_val, align 8
  %93 = bitcast i8** %92 to i8*
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @xrealloc(i8* %93, i32 %94)
  %96 = inttoptr i64 %95 to i8**
  store i8** %96, i8*** @return_val, align 8
  br label %97

97:                                               ; preds = %86, %81
  %98 = load i8*, i8** %13, align 8
  %99 = load i8**, i8*** @return_val, align 8
  %100 = load i32, i32* @return_val_index, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @return_val_index, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  store i8* %98, i8** %103, align 8
  %104 = load i8**, i8*** @return_val, align 8
  %105 = load i32, i32* @return_val_index, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* null, i8** %107, align 8
  br label %108

108:                                              ; preds = %97, %19
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

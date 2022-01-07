; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_completion_list_objc_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_completion_list_objc_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@completion_list_objc_symbol.tmp = internal global i8* null, align 8
@completion_list_objc_symbol.tmplen = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minimal_symbol*, i8*, i32, i8*, i8*)* @completion_list_objc_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @completion_list_objc_symbol(%struct.minimal_symbol* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.minimal_symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.minimal_symbol* %0, %struct.minimal_symbol** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %14, align 8
  %15 = load %struct.minimal_symbol*, %struct.minimal_symbol** %6, align 8
  %16 = call i8* @SYMBOL_NATURAL_NAME(%struct.minimal_symbol* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 45
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 43
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %147

29:                                               ; preds = %22, %5
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 91
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @completion_list_add_name(i8* %37, i8* %38, i32 %39, i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %35, %29
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @completion_list_objc_symbol.tmplen, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* @completion_list_objc_symbol.tmplen, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1024, i32* @completion_list_objc_symbol.tmplen, align 4
  br label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @completion_list_objc_symbol.tmplen, align 4
  %56 = mul i32 %55, 2
  store i32 %56, i32* @completion_list_objc_symbol.tmplen, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %59 = load i32, i32* @completion_list_objc_symbol.tmplen, align 4
  %60 = call i8* @xrealloc(i8* %58, i32 %59)
  store i8* %60, i8** @completion_list_objc_symbol.tmp, align 8
  br label %44

61:                                               ; preds = %44
  %62 = load i8*, i8** %11, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 32)
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %13, align 8
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 40)
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %127

74:                                               ; preds = %69
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %127

77:                                               ; preds = %74
  %78 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memcpy(i8* %78, i8* %79, i32 %85)
  %87 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  store i8 32, i8* %93, align 1
  %94 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = add nsw i32 %104, 1
  %106 = call i32 @memcpy(i8* %101, i8* %102, i32 %105)
  %107 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @completion_list_add_name(i8* %107, i8* %108, i32 %109, i8* %110, i8* %111)
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 91
  br i1 %117, label %118, label %126

118:                                              ; preds = %77
  %119 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @completion_list_add_name(i8* %120, i8* %121, i32 %122, i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %118, %77
  br label %127

127:                                              ; preds = %126, %74, %69
  %128 = load i8*, i8** %13, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = call i32 @strcpy(i8* %131, i8* %132)
  %134 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %135 = call i8* @strchr(i8* %134, i8 signext 93)
  store i8* %135, i8** %14, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i8*, i8** %14, align 8
  store i8 0, i8* %139, align 1
  br label %140

140:                                              ; preds = %138, %130
  %141 = load i8*, i8** @completion_list_objc_symbol.tmp, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @completion_list_add_name(i8* %141, i8* %142, i32 %143, i8* %144, i8* %145)
  br label %147

147:                                              ; preds = %28, %140, %127
  ret void
}

declare dso_local i8* @SYMBOL_NATURAL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @completion_list_add_name(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }

@mask_address_p = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@QUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @mips_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_attrib*, align 8
  %13 = alloca %struct.target_ops*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %12, align 8
  store %struct.target_ops* %5, %struct.target_ops** %13, align 8
  %19 = load i64, i64* @mask_address_p, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %6
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, -4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %15, align 4
  %30 = sub nsw i32 %28, %29
  %31 = add nsw i32 %30, 3
  %32 = sdiv i32 %31, 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = mul nsw i32 %33, 4
  %35 = call i8* @alloca(i32 %34)
  store i8* %35, i8** %17, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %114

38:                                               ; preds = %23
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %38
  %46 = load i8*, i8** %17, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @mips_fetch_word(i32 %48)
  %50 = call i32 @store_unsigned_integer(i8* %47, i32 4, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i8*, i8** %17, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %56, 1
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 %62, 1
  %64 = mul nsw i32 %63, 4
  %65 = add nsw i32 %61, %64
  %66 = call i32 @mips_fetch_word(i32 %65)
  %67 = call i32 @store_unsigned_integer(i8* %60, i32 4, i32 %66)
  br label %68

68:                                               ; preds = %54, %51
  %69 = load i8*, i8** %17, align 8
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %103, %68
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %77
  %82 = load i32, i32* %15, align 4
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* %14, align 4
  %85 = mul nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = call i32 @extract_unsigned_integer(i8* %87, i32 4)
  %89 = call i32 @mips_store_word(i32 %82, i32 %88, i32* null)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %14, align 4
  %91 = srem i32 %90, 256
  %92 = icmp eq i32 %91, 255
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @gdb_stdout, align 4
  %96 = call i32 @gdb_flush(i32 %95)
  br label %97

97:                                               ; preds = %93, %81
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* @errno, align 4
  store i32 0, i32* %7, align 4
  br label %145

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 4
  store i32 %107, i32* %15, align 4
  br label %77

108:                                              ; preds = %77
  %109 = load i32, i32* %16, align 4
  %110 = icmp sge i32 %109, 256
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  br label %143

114:                                              ; preds = %23
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* %14, align 4
  %122 = mul nsw i32 %121, 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @mips_fetch_word(i32 %125)
  %127 = call i32 @store_unsigned_integer(i8* %124, i32 4, i32 %126)
  %128 = load i32, i32* @QUIT, align 4
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 4
  store i32 %133, i32* %15, align 4
  br label %115

134:                                              ; preds = %115
  %135 = load i8*, i8** %9, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @memcpy(i8* %135, i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %113
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %100
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @mips_fetch_word(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mips_store_word(i32, i32, i32*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_crc32.h_crc32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_crc32.h_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32.crc_tbl_inited = internal global i32 0, align 4
@crc32.crc_tbl = internal global [256 x i64] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64)* @crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crc32(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  %12 = load volatile i32, i32* @crc32.crc_tbl_inited, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %16, 256
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %7, align 8
  store i64 8, i64* %9, align 8
  br label %20

20:                                               ; preds = %35, %18
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %24, 1
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = lshr i64 %28, 1
  %30 = xor i64 %29, 3988292384
  store i64 %30, i64* %7, align 8
  br label %34

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = lshr i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %9, align 8
  br label %20

38:                                               ; preds = %20
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %40
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %15

45:                                               ; preds = %15
  store volatile i32 1, i32* @crc32.crc_tbl_inited, align 4
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i64, i64* %4, align 8
  %48 = xor i64 %47, 4294967295
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %149, %46
  %50 = load i64, i64* %6, align 8
  %51 = icmp uge i64 %50, 8
  br i1 %51, label %52, label %152

52:                                               ; preds = %49
  %53 = load i64, i64* %4, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i64
  %58 = xor i64 %53, %57
  %59 = and i64 %58, 255
  %60 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = lshr i64 %62, 8
  %64 = xor i64 %61, %63
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i64
  %70 = xor i64 %65, %69
  %71 = and i64 %70, 255
  %72 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = lshr i64 %74, 8
  %76 = xor i64 %73, %75
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i64
  %82 = xor i64 %77, %81
  %83 = and i64 %82, 255
  %84 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = lshr i64 %86, 8
  %88 = xor i64 %85, %87
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %10, align 8
  %92 = load i8, i8* %90, align 1
  %93 = zext i8 %92 to i64
  %94 = xor i64 %89, %93
  %95 = and i64 %94, 255
  %96 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = lshr i64 %98, 8
  %100 = xor i64 %97, %99
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i64
  %106 = xor i64 %101, %105
  %107 = and i64 %106, 255
  %108 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = lshr i64 %110, 8
  %112 = xor i64 %109, %111
  store i64 %112, i64* %4, align 8
  %113 = load i64, i64* %4, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %10, align 8
  %116 = load i8, i8* %114, align 1
  %117 = zext i8 %116 to i64
  %118 = xor i64 %113, %117
  %119 = and i64 %118, 255
  %120 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = lshr i64 %122, 8
  %124 = xor i64 %121, %123
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %4, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %10, align 8
  %128 = load i8, i8* %126, align 1
  %129 = zext i8 %128 to i64
  %130 = xor i64 %125, %129
  %131 = and i64 %130, 255
  %132 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %4, align 8
  %135 = lshr i64 %134, 8
  %136 = xor i64 %133, %135
  store i64 %136, i64* %4, align 8
  %137 = load i64, i64* %4, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i64
  %142 = xor i64 %137, %141
  %143 = and i64 %142, 255
  %144 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %4, align 8
  %147 = lshr i64 %146, 8
  %148 = xor i64 %145, %147
  store i64 %148, i64* %4, align 8
  br label %149

149:                                              ; preds = %52
  %150 = load i64, i64* %6, align 8
  %151 = sub i64 %150, 8
  store i64 %151, i64* %6, align 8
  br label %49

152:                                              ; preds = %49
  br label %153

153:                                              ; preds = %157, %152
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %154, -1
  store i64 %155, i64* %6, align 8
  %156 = icmp ne i64 %154, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load i64, i64* %4, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %10, align 8
  %161 = load i8, i8* %159, align 1
  %162 = zext i8 %161 to i64
  %163 = xor i64 %158, %162
  %164 = and i64 %163, 255
  %165 = getelementptr inbounds [256 x i64], [256 x i64]* @crc32.crc_tbl, i64 0, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %4, align 8
  %168 = lshr i64 %167, 8
  %169 = xor i64 %166, %168
  store i64 %169, i64* %4, align 8
  br label %153

170:                                              ; preds = %153
  %171 = load i64, i64* %4, align 8
  %172 = xor i64 %171, 4294967295
  ret i64 %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

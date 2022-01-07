; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzh_stream = type { %struct.lzh_dec* }
%struct.lzh_dec = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, i64, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@PT_BITLEN_SIZE = common dso_local global i32 0, align 4
@LT_BITLEN_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzh_stream*, i8*)* @lzh_decode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzh_decode_init(%struct.lzh_stream* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzh_stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lzh_dec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lzh_stream* %0, %struct.lzh_stream** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %10 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %9, i32 0, i32 0
  %11 = load %struct.lzh_dec*, %struct.lzh_dec** %10, align 8
  %12 = icmp eq %struct.lzh_dec* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = call %struct.lzh_dec* @calloc(i32 1, i32 80)
  %15 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %16 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %15, i32 0, i32 0
  store %struct.lzh_dec* %14, %struct.lzh_dec** %16, align 8
  %17 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %18 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %17, i32 0, i32 0
  %19 = load %struct.lzh_dec*, %struct.lzh_dec** %18, align 8
  %20 = icmp eq %struct.lzh_dec* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %22, i32* %3, align 4
  br label %159

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %26 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %25, i32 0, i32 0
  %27 = load %struct.lzh_dec*, %struct.lzh_dec** %26, align 8
  store %struct.lzh_dec* %27, %struct.lzh_dec** %6, align 8
  %28 = load i32, i32* @ARCHIVE_FAILED, align 4
  %29 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %30 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 108
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 104
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33, %24
  %46 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %46, i32* %3, align 4
  br label %159

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %55 [
    i32 53, label %52
    i32 54, label %53
    i32 55, label %54
  ]

52:                                               ; preds = %47
  store i32 13, i32* %7, align 4
  br label %57

53:                                               ; preds = %47
  store i32 15, i32* %7, align 4
  br label %57

54:                                               ; preds = %47
  store i32 16, i32* %7, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %56, i32* %3, align 4
  br label %159

57:                                               ; preds = %54, %53, %52
  %58 = load i32, i32* @ARCHIVE_FATAL, align 4
  %59 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %60 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %62 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %61, i32 0, i32 1
  store i32 131072, i32* %62, align 4
  %63 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %64 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %65, 1
  %67 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %68 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %70 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %69, i32 0, i32 12
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %87

73:                                               ; preds = %57
  %74 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %75 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @malloc(i32 %76)
  %78 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %79 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %78, i32 0, i32 12
  store i32* %77, i32** %79, align 8
  %80 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %81 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %80, i32 0, i32 12
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %85, i32* %3, align 4
  br label %159

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %57
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 1, %88
  store i32 %89, i32* %8, align 4
  %90 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %91 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %90, i32 0, i32 12
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %94 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @memset(i32* %101, i32 32, i32 %102)
  %104 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %105 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %104, i32 0, i32 11
  store i64 0, i64* %105, align 8
  %106 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %107 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %106, i32 0, i32 10
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %111 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 15
  br i1 %113, label %117, label %114

114:                                              ; preds = %87
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 16
  br label %117

117:                                              ; preds = %114, %87
  %118 = phi i1 [ true, %87 ], [ %116, %114 ]
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 5, i32 4
  %121 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %122 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @PT_BITLEN_SIZE, align 4
  %124 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %125 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 8
  %126 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %127 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %126, i32 0, i32 5
  store i32 5, i32* %127, align 4
  %128 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %129 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %132 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %135 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %134, i32 0, i32 7
  %136 = load i32, i32* @LT_BITLEN_SIZE, align 4
  %137 = call i64 @lzh_huffman_init(%struct.TYPE_4__* %135, i32 %136, i32 16)
  %138 = load i64, i64* @ARCHIVE_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %117
  %141 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %141, i32* %3, align 4
  br label %159

142:                                              ; preds = %117
  %143 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %144 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 9, i32* %145, align 4
  %146 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %147 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %146, i32 0, i32 6
  %148 = load i32, i32* @PT_BITLEN_SIZE, align 4
  %149 = call i64 @lzh_huffman_init(%struct.TYPE_4__* %147, i32 %148, i32 16)
  %150 = load i64, i64* @ARCHIVE_OK, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %153, i32* %3, align 4
  br label %159

154:                                              ; preds = %142
  %155 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %156 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load i64, i64* @ARCHIVE_OK, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %152, %140, %84, %55, %45, %21
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.lzh_dec* @calloc(i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @lzh_huffman_init(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

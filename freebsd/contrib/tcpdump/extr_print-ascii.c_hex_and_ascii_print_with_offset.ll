; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ascii.c_hex_and_ascii_print_with_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ascii.c_hex_and_ascii_print_with_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@HEXDUMP_SHORTS_PER_LINE = common dso_local global i32 0, align 4
@HEXDUMP_HEXSTUFF_PER_SHORT = common dso_local global i32 0, align 4
@ASCII_LINELENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" %02x%02x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s0x%04x: %-*s  %s\00", align 1
@HEXDUMP_HEXSTUFF_PER_LINE = common dso_local global i32 0, align 4
@HEXDUMP_BYTES_PER_LINE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hex_and_ascii_print_with_offset(%struct.TYPE_4__* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* @HEXDUMP_SHORTS_PER_LINE, align 4
  %22 = load i32, i32* @HEXDUMP_HEXSTUFF_PER_SHORT, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32, i32* @ASCII_LINELENGTH, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp uge i32* %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  br label %47

46:                                               ; preds = %5
  br label %47

47:                                               ; preds = %46, %37
  %48 = phi i64 [ %45, %37 ], [ 0, %46 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %15, align 4
  store i32 0, i32* %12, align 4
  store i8* %27, i8** %18, align 8
  store i8* %31, i8** %20, align 8
  br label %60

60:                                               ; preds = %126, %55
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %15, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %127

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %8, align 8
  %67 = load i32, i32* %65, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %14, align 4
  %71 = load i8*, i8** %18, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = ptrtoint i8* %27 to i64
  %75 = sub i64 %73, %74
  %76 = sub i64 %25, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %71, i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @HEXDUMP_HEXSTUFF_PER_SHORT, align 4
  %82 = load i8*, i8** %18, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %18, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @ND_ISGRAPH(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %64
  %89 = load i32, i32* %13, align 4
  br label %91

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 46, %90 ]
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %20, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %20, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i32, i32* %14, align 4
  %97 = call i64 @ND_ISGRAPH(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %14, align 4
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 46, %101 ]
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %20, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %20, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @HEXDUMP_SHORTS_PER_LINE, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %102
  %113 = load i8*, i8** %20, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %18, align 8
  store i8 0, i8* %114, align 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @HEXDUMP_HEXSTUFF_PER_LINE, align 4
  %119 = bitcast i8* %31 to %struct.TYPE_4__*
  %120 = call i32 @ND_PRINT(%struct.TYPE_4__* %119)
  store i32 0, i32* %12, align 4
  store i8* %27, i8** %18, align 8
  store i8* %31, i8** %20, align 8
  %121 = load i64, i64* @HEXDUMP_BYTES_PER_LINE, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %112, %102
  br label %60

127:                                              ; preds = %60
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %127
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %8, align 8
  %134 = load i32, i32* %132, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i8*, i8** %18, align 8
  %136 = load i8*, i8** %18, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = ptrtoint i8* %27 to i64
  %139 = sub i64 %137, %138
  %140 = sub i64 %25, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* %13, align 4
  %143 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %135, i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i8*, i8** %18, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  store i8* %145, i8** %18, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i64 @ND_ISGRAPH(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %131
  %150 = load i32, i32* %13, align 4
  br label %152

151:                                              ; preds = %131
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 46, %151 ]
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %20, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %20, align 8
  store i8 %154, i8* %155, align 1
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %152, %127
  %160 = load i32, i32* %12, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i8*, i8** %20, align 8
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %18, align 8
  store i8 0, i8* %164, align 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @HEXDUMP_HEXSTUFF_PER_LINE, align 4
  %169 = bitcast i8* %31 to %struct.TYPE_4__*
  %170 = call i32 @ND_PRINT(%struct.TYPE_4__* %169)
  br label %171

171:                                              ; preds = %162, %159
  %172 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %172)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i64 @ND_ISGRAPH(i32) #2

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

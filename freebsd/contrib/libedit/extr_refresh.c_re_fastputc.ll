; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_refresh.c_re_fastputc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_refresh.c_re_fastputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8**, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }

@MB_FILL_CHAR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@EL_HAS_AUTO_MARGINS = common dso_local global i64 0, align 8
@EL_HAS_MAGIC_MARGINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8)* @re_fastputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_fastputc(%struct.TYPE_12__* %0, i8 signext %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = load i8, i8* %4, align 1
  %10 = call i32 @wcwidth(i8 signext %9)
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %21, %26
  br label %28

28:                                               ; preds = %14, %11
  %29 = phi i1 [ false, %11 ], [ %27, %14 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  call void @re_fastputc(%struct.TYPE_12__* %31, i8 signext 32)
  br label %11

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = load i8, i8* %4, align 1
  %35 = call i32 @terminal__putc(%struct.TYPE_12__* %33, i8 signext %34)
  %36 = load i8, i8* %4, align 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8*, i8** %39, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8 %36, i8* %51, align 1
  br label %52

52:                                               ; preds = %56, %32
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i8, i8* @MB_FILL_CHAR, align 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8*, i8** %60, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8 %57, i8* %72, align 1
  br label %52

73:                                               ; preds = %52
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %77, %82
  br i1 %83, label %84, label %183

84:                                               ; preds = %73
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = icmp uge i64 %92, %98
  br i1 %99, label %100, label %142

100:                                              ; preds = %84
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %5, align 8
  store i32 1, i32* %7, align 4
  br label %111

111:                                              ; preds = %130, %100
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  store i8* %122, i8** %129, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %111

133:                                              ; preds = %111
  %134 = load i8*, i8** %5, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %137, i64 %140
  store i8* %134, i8** %141, align 8
  br label %158

142:                                              ; preds = %84
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %153, align 8
  %156 = getelementptr inbounds i8*, i8** %150, i64 %155
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %5, align 8
  br label %158

158:                                              ; preds = %142, %133
  %159 = load i8*, i8** %5, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @re__copy_and_pad(i8* %159, i8* bitcast ([1 x i32]* @.str to i8*), i64 %164)
  %166 = load i64, i64* @EL_HAS_AUTO_MARGINS, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %158
  %169 = load i64, i64* @EL_HAS_MAGIC_MARGINS, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %173 = call i32 @terminal__putc(%struct.TYPE_12__* %172, i8 signext 32)
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %175 = call i32 @terminal__putc(%struct.TYPE_12__* %174, i8 signext 8)
  br label %176

176:                                              ; preds = %171, %168
  br label %182

177:                                              ; preds = %158
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = call i32 @terminal__putc(%struct.TYPE_12__* %178, i8 signext 13)
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %181 = call i32 @terminal__putc(%struct.TYPE_12__* %180, i8 signext 10)
  br label %182

182:                                              ; preds = %177, %176
  br label %183

183:                                              ; preds = %182, %73
  ret void
}

declare dso_local i32 @wcwidth(i8 signext) #1

declare dso_local i32 @terminal__putc(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @re__copy_and_pad(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_readfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_readfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32, i32, i32, %struct.buf* }
%struct.buf = type { i32, i64* }

@mparse_readfd.recursion_depth = internal global i32 0, align 4
@MANDOCERR_ROFFLOOP = common dso_local global i32 0, align 4
@MPARSE_UTF8 = common dso_local global i32 0, align 4
@MPARSE_LATIN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mparse_readfd(%struct.mparse* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mparse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buf, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mparse* %0, %struct.mparse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @mparse_readfd.recursion_depth, align 4
  %15 = icmp sgt i32 %14, 64
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @MANDOCERR_ROFFLOOP, align 4
  %18 = load %struct.mparse*, %struct.mparse** %4, align 8
  %19 = getelementptr inbounds %struct.mparse, %struct.mparse* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mandoc_msg(i32 %17, i32 %20, i32 0, i32* null)
  br label %141

22:                                               ; preds = %3
  %23 = load %struct.mparse*, %struct.mparse** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @read_whole_file(%struct.mparse* %23, i32 %24, %struct.buf* %7, i32* %13)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %141

28:                                               ; preds = %22
  %29 = load %struct.mparse*, %struct.mparse** %4, align 8
  %30 = getelementptr inbounds %struct.mparse, %struct.mparse* %29, i32 0, i32 3
  %31 = load %struct.buf*, %struct.buf** %30, align 8
  store %struct.buf* %31, %struct.buf** %8, align 8
  %32 = load %struct.mparse*, %struct.mparse** %4, align 8
  %33 = getelementptr inbounds %struct.mparse, %struct.mparse* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mparse*, %struct.mparse** %4, align 8
  %36 = getelementptr inbounds %struct.mparse, %struct.mparse* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = call i8* (...) @mandoc_msg_getinfilename()
  store i8* %38, i8** %9, align 8
  %39 = load %struct.mparse*, %struct.mparse** %4, align 8
  %40 = getelementptr inbounds %struct.mparse, %struct.mparse* %39, i32 0, i32 3
  store %struct.buf* %7, %struct.buf** %40, align 8
  %41 = load %struct.mparse*, %struct.mparse** %4, align 8
  %42 = getelementptr inbounds %struct.mparse, %struct.mparse* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MPARSE_UTF8, align 4
  %45 = load i32, i32* @MPARSE_LATIN1, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load %struct.mparse*, %struct.mparse** %4, align 8
  %49 = getelementptr inbounds %struct.mparse, %struct.mparse* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mparse*, %struct.mparse** %4, align 8
  %51 = getelementptr inbounds %struct.mparse, %struct.mparse* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @mandoc_msg_setinfilename(i8* %52)
  %54 = load %struct.mparse*, %struct.mparse** %4, align 8
  %55 = getelementptr inbounds %struct.mparse, %struct.mparse* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MPARSE_UTF8, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %28
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i8
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 239
  br i1 %71, label %72, label %95

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i8
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 187
  br i1 %79, label %80, label %95

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i8
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 191
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  store i64 3, i64* %10, align 8
  %89 = load i32, i32* @MPARSE_LATIN1, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.mparse*, %struct.mparse** %4, align 8
  %92 = getelementptr inbounds %struct.mparse, %struct.mparse* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %96

95:                                               ; preds = %80, %72, %64, %60, %28
  store i64 0, i64* %10, align 8
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32, i32* @mparse_readfd.recursion_depth, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @mparse_readfd.recursion_depth, align 4
  %99 = load %struct.mparse*, %struct.mparse** %4, align 8
  %100 = load i64, i64* %10, align 8
  %101 = bitcast %struct.buf* %7 to { i32, i64* }*
  %102 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %101, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @mparse_buf_r(%struct.mparse* %99, i32 %103, i64* %105, i64 %100, i32 1)
  %107 = load i32, i32* @mparse_readfd.recursion_depth, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* @mparse_readfd.recursion_depth, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %96
  %111 = load %struct.mparse*, %struct.mparse** %4, align 8
  %112 = call i32 @mparse_end(%struct.mparse* %111)
  br label %113

113:                                              ; preds = %110, %96
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @munmap(i64* %118, i32 %120)
  br label %126

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = call i32 @free(i64* %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.buf*, %struct.buf** %8, align 8
  %128 = load %struct.mparse*, %struct.mparse** %4, align 8
  %129 = getelementptr inbounds %struct.mparse, %struct.mparse* %128, i32 0, i32 3
  store %struct.buf* %127, %struct.buf** %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.mparse*, %struct.mparse** %4, align 8
  %132 = getelementptr inbounds %struct.mparse, %struct.mparse* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.mparse*, %struct.mparse** %4, align 8
  %135 = getelementptr inbounds %struct.mparse, %struct.mparse* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @mandoc_msg_setinfilename(i8* %139)
  br label %141

141:                                              ; preds = %16, %27, %138, %126
  ret void
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i32*) #1

declare dso_local i32 @read_whole_file(%struct.mparse*, i32, %struct.buf*, i32*) #1

declare dso_local i8* @mandoc_msg_getinfilename(...) #1

declare dso_local i32 @mandoc_msg_setinfilename(i8*) #1

declare dso_local i32 @mparse_buf_r(%struct.mparse*, i32, i64*, i64, i32) #1

declare dso_local i32 @mparse_end(%struct.mparse*) #1

declare dso_local i32 @munmap(i64*, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

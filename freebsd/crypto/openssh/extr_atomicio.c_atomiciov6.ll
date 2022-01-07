; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_atomicio.c_atomiciov6.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_atomicio.c_atomiciov6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i8* }
%struct.pollfd = type { i32, i32 }

@IOV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @atomiciov6(i32 (i32, %struct.iovec*, i32)* %0, i32 %1, %struct.iovec* %2, i32 %3, i32 (i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32 (i32, %struct.iovec*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.iovec*, align 8
  %20 = alloca %struct.pollfd, align 4
  %21 = alloca i32, align 4
  store i32 (i32, %struct.iovec*, i32)* %0, i32 (i32, %struct.iovec*, i32)** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.iovec* %2, %struct.iovec** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 (i8*, i64)* %4, i32 (i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i32, i32* @IOV_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca %struct.iovec, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  store %struct.iovec* %25, %struct.iovec** %19, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @IOV_MAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %6
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store i64 0, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %169

34:                                               ; preds = %28
  %35 = load %struct.iovec*, %struct.iovec** %19, align 8
  %36 = load %struct.iovec*, %struct.iovec** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 16
  %40 = call i32 @memcpy(%struct.iovec* %35, %struct.iovec* %36, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32 (i32, %struct.iovec*, i32)*, i32 (i32, %struct.iovec*, i32)** %8, align 8
  %44 = icmp eq i32 (i32, %struct.iovec*, i32)* %43, @readv
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @POLLIN, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @POLLOUT, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %166, %83, %74, %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.iovec*, %struct.iovec** %19, align 8
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i64 0
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ false, %52 ], [ %60, %55 ]
  br i1 %62, label %63, label %167

63:                                               ; preds = %61
  %64 = load i32 (i32, %struct.iovec*, i32)*, i32 (i32, %struct.iovec*, i32)** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.iovec*, %struct.iovec** %19, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 %64(i32 %65, %struct.iovec* %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  switch i32 %69, label %89 [
    i32 -1, label %70
    i32 0, label %86
  ]

70:                                               ; preds = %63
  %71 = load i32, i32* @errno, align 4
  %72 = load i32, i32* @EINTR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %52

75:                                               ; preds = %70
  %76 = load i32, i32* @errno, align 4
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @errno, align 4
  %81 = load i32, i32* @EWOULDBLOCK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %75
  %84 = call i32 @poll(%struct.pollfd* %20, i32 1, i32 -1)
  br label %52

85:                                               ; preds = %79
  store i64 0, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %169

86:                                               ; preds = %63
  %87 = load i32, i32* @EPIPE, align 4
  store i32 %87, i32* @errno, align 4
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %169

89:                                               ; preds = %63
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %14, align 8
  br label %95

95:                                               ; preds = %107, %89
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.iovec*, %struct.iovec** %19, align 8
  %101 = getelementptr inbounds %struct.iovec, %struct.iovec* %100, i64 0
  %102 = getelementptr inbounds %struct.iovec, %struct.iovec* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp uge i64 %99, %103
  br label %105

105:                                              ; preds = %98, %95
  %106 = phi i1 [ false, %95 ], [ %104, %98 ]
  br i1 %106, label %107, label %118

107:                                              ; preds = %105
  %108 = load %struct.iovec*, %struct.iovec** %19, align 8
  %109 = getelementptr inbounds %struct.iovec, %struct.iovec* %108, i64 0
  %110 = getelementptr inbounds %struct.iovec, %struct.iovec* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %15, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %15, align 8
  %114 = load %struct.iovec*, %struct.iovec** %19, align 8
  %115 = getelementptr inbounds %struct.iovec, %struct.iovec* %114, i32 1
  store %struct.iovec* %115, %struct.iovec** %19, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %11, align 4
  br label %95

118:                                              ; preds = %105
  %119 = load i64, i64* %15, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %15, align 8
  %126 = load %struct.iovec*, %struct.iovec** %19, align 8
  %127 = getelementptr inbounds %struct.iovec, %struct.iovec* %126, i64 0
  %128 = getelementptr inbounds %struct.iovec, %struct.iovec* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ugt i64 %125, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124, %121
  %132 = load i32, i32* @EFAULT, align 4
  store i32 %132, i32* @errno, align 4
  store i64 0, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %169

133:                                              ; preds = %124, %118
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %153

137:                                              ; preds = %133
  %138 = load %struct.iovec*, %struct.iovec** %19, align 8
  %139 = getelementptr inbounds %struct.iovec, %struct.iovec* %138, i64 0
  %140 = getelementptr inbounds %struct.iovec, %struct.iovec* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* %15, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load %struct.iovec*, %struct.iovec** %19, align 8
  %145 = getelementptr inbounds %struct.iovec, %struct.iovec* %144, i64 0
  %146 = getelementptr inbounds %struct.iovec, %struct.iovec* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load %struct.iovec*, %struct.iovec** %19, align 8
  %149 = getelementptr inbounds %struct.iovec, %struct.iovec* %148, i64 0
  %150 = getelementptr inbounds %struct.iovec, %struct.iovec* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub i64 %151, %147
  store i64 %152, i64* %150, align 8
  br label %153

153:                                              ; preds = %137, %136
  %154 = load i32 (i8*, i64)*, i32 (i8*, i64)** %12, align 8
  %155 = icmp ne i32 (i8*, i64)* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i32 (i8*, i64)*, i32 (i8*, i64)** %12, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 %157(i8* %158, i64 %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @EINTR, align 4
  store i32 %164, i32* @errno, align 4
  %165 = load i64, i64* %14, align 8
  store i64 %165, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %169

166:                                              ; preds = %156, %153
  br label %52

167:                                              ; preds = %61
  %168 = load i64, i64* %14, align 8
  store i64 %168, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %169

169:                                              ; preds = %167, %163, %131, %86, %85, %32
  %170 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i64, i64* %7, align 8
  ret i64 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.iovec*, %struct.iovec*, i64) #2

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

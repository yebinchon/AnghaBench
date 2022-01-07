; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_copy_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_copy_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@errno = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@ttyout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i32, i32)* @copy_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_bytes(i32 %0, i32 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca %struct.timeval, align 8
  %20 = alloca %struct.timeval, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  store volatile i32 %24, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  store volatile i32 %28, i32* %22, align 4
  br label %32

29:                                               ; preds = %6
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  store volatile i32 %31, i32* %22, align 4
  br label %32

32:                                               ; preds = %29, %27
  br label %33

33:                                               ; preds = %32, %116
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @gettimeofday(%struct.timeval* %18, i32* null)
  br label %38

38:                                               ; preds = %36, %33
  store i32 0, i32* @errno, align 4
  store volatile i32 0, i32* %16, align 4
  store volatile i32 0, i32* %15, align 4
  %39 = load volatile i32, i32* %22, align 4
  store volatile i32 %39, i32* %21, align 4
  br label %40

40:                                               ; preds = %98, %38
  %41 = load volatile i32, i32* %21, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = trunc i64 %46 to i32
  %48 = load volatile i32, i32* %21, align 4
  %49 = call i32 @MIN(i32 %47, i32 %48)
  %50 = call i32 @read(i32 %44, i8* %45, i32 %49)
  store volatile i32 %50, i32* %15, align 4
  %51 = load volatile i32, i32* %15, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %117

54:                                               ; preds = %43
  %55 = load volatile i32, i32* %15, align 4
  %56 = load volatile i32, i32* @bytes, align 4
  %57 = add nsw i32 %56, %55
  store volatile i32 %57, i32* @bytes, align 4
  %58 = load volatile i32, i32* %15, align 4
  %59 = load volatile i32, i32* %21, align 4
  %60 = sub nsw i32 %59, %58
  store volatile i32 %60, i32* %21, align 4
  %61 = load i8*, i8** %10, align 8
  store i8* %61, i8** %17, align 8
  br label %62

62:                                               ; preds = %73, %54
  %63 = load volatile i32, i32* %15, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = load volatile i32, i32* %15, align 4
  %69 = call i32 @write(i32 %66, i8* %67, i32 %68)
  store volatile i32 %69, i32* %16, align 4
  %70 = load volatile i32, i32* %16, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %117

73:                                               ; preds = %65
  %74 = load volatile i32, i32* %16, align 4
  %75 = load volatile i32, i32* %15, align 4
  %76 = sub nsw i32 %75, %74
  store volatile i32 %76, i32* %15, align 4
  %77 = load volatile i32, i32* %16, align 4
  %78 = load i8*, i8** %17, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %17, align 8
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %89, %84
  %86 = load volatile i32, i32* @bytes, align 4
  %87 = load volatile i32, i32* %14, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* @ttyout, align 4
  %91 = call i32 @putc(i8 signext 35, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load volatile i32, i32* %14, align 4
  %94 = add nsw i32 %93, %92
  store volatile i32 %94, i32* %14, align 4
  br label %85

95:                                               ; preds = %85
  %96 = load i32, i32* @ttyout, align 4
  %97 = call i32 @fflush(i32 %96)
  br label %98

98:                                               ; preds = %95, %81
  br label %40

99:                                               ; preds = %40
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102, %110
  %104 = call i32 @gettimeofday(%struct.timeval* %19, i32* null)
  %105 = call i32 @timersub(%struct.timeval* %19, %struct.timeval* %18, %struct.timeval* %20)
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %115

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 1000000, %112
  %114 = call i32 @usleep(i64 %113)
  br label %103

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %99
  br label %33

117:                                              ; preds = %72, %53
  %118 = load i32, i32* @errno, align 4
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load volatile i32, i32* @bytes, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load volatile i32, i32* @bytes, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @ttyout, align 4
  %130 = call i32 @putc(i8 signext 35, i32 %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32, i32* @ttyout, align 4
  %133 = call i32 @putc(i8 signext 10, i32 %132)
  %134 = load i32, i32* @ttyout, align 4
  %135 = call i32 @fflush(i32 %134)
  br label %136

136:                                              ; preds = %131, %121, %117
  %137 = load i32, i32* %23, align 4
  store i32 %137, i32* @errno, align 4
  %138 = load volatile i32, i32* %15, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 1, i32* %7, align 4
  br label %146

141:                                              ; preds = %136
  %142 = load volatile i32, i32* %16, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 2, i32* %7, align 4
  br label %146

145:                                              ; preds = %141
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %144, %140
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @usleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

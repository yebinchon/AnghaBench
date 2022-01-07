; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_utimensat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_utimensat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_utimensat_args = type { i32, i32, i32*, i32* }
%struct.l_timespec = type { i32, i32 }
%struct.timespec = type { i64, i32 }

@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@LINUX_AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i64 0, align 8
@UTIME_NOW = common dso_local global i8* null, align 8
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_utimensat(%struct.thread* %0, %struct.linux_utimensat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_utimensat_args*, align 8
  %6 = alloca [2 x %struct.l_timespec], align 16
  %7 = alloca [2 x %struct.timespec], align 16
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_utimensat_args* %1, %struct.linux_utimensat_args** %5, align 8
  store %struct.timespec* null, %struct.timespec** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @AT_FDCWD, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  store i32 %25, i32* %11, align 4
  %26 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %27 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LINUX_AT_SYMLINK_NOFOLLOW, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %182

35:                                               ; preds = %24
  %36 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %129

40:                                               ; preds = %35
  %41 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %42 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 0
  %45 = call i32 @copyin(i32* %43, %struct.l_timespec* %44, i32 16)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %182

50:                                               ; preds = %40
  %51 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 0
  %52 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 16
  %54 = call i64 @linux_utimensat_nsec_valid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 1
  %58 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @linux_utimensat_nsec_valid(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %182

64:                                               ; preds = %56
  %65 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 0
  %66 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %69 = getelementptr inbounds %struct.timespec, %struct.timespec* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 0
  %71 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 16
  switch i32 %72, label %82 [
    i32 128, label %73
    i32 129, label %77
  ]

73:                                               ; preds = %64
  %74 = load i64, i64* @UTIME_OMIT, align 8
  %75 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 16
  br label %89

77:                                               ; preds = %64
  %78 = load i8*, i8** @UTIME_NOW, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %81 = getelementptr inbounds %struct.timespec, %struct.timespec* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 16
  br label %89

82:                                               ; preds = %64
  %83 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 0
  %84 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 16
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 16
  br label %89

89:                                               ; preds = %82, %77, %73
  %90 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 1
  %91 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %94 = getelementptr inbounds %struct.timespec, %struct.timespec* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 1
  %96 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %107 [
    i32 128, label %98
    i32 129, label %102
  ]

98:                                               ; preds = %89
  %99 = load i64, i64* @UTIME_OMIT, align 8
  %100 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 16
  br label %114

102:                                              ; preds = %89
  %103 = load i8*, i8** @UTIME_NOW, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 16
  br label %114

107:                                              ; preds = %89
  %108 = getelementptr inbounds [2 x %struct.l_timespec], [2 x %struct.l_timespec]* %6, i64 0, i64 1
  %109 = getelementptr inbounds %struct.l_timespec, %struct.l_timespec* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 16
  br label %114

114:                                              ; preds = %107, %102, %98
  %115 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  store %struct.timespec* %115, %struct.timespec** %8, align 8
  %116 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %117 = getelementptr inbounds %struct.timespec, %struct.timespec* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 16
  %119 = load i64, i64* @UTIME_OMIT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %123 = getelementptr inbounds %struct.timespec, %struct.timespec* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 16
  %125 = load i64, i64* @UTIME_OMIT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %182

128:                                              ; preds = %121, %114
  br label %129

129:                                              ; preds = %128, %35
  %130 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %131 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.thread*, %struct.thread** %4, align 8
  %136 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %137 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @LCONVPATHEXIST_AT(%struct.thread* %135, i32* %138, i8** %9, i32 %139)
  br label %149

141:                                              ; preds = %129
  %142 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %143 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %3, align 4
  br label %182

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148, %134
  %150 = load %struct.linux_utimensat_args*, %struct.linux_utimensat_args** %5, align 8
  %151 = getelementptr inbounds %struct.linux_utimensat_args, %struct.linux_utimensat_args* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @LINUX_AT_SYMLINK_NOFOLLOW, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %156, %149
  %161 = load i8*, i8** %9, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load %struct.thread*, %struct.thread** %4, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.timespec*, %struct.timespec** %8, align 8
  %167 = load i32, i32* @UIO_SYSSPACE, align 4
  %168 = call i32 @kern_futimens(%struct.thread* %164, i32 %165, %struct.timespec* %166, i32 %167)
  store i32 %168, i32* %10, align 4
  br label %180

169:                                              ; preds = %160
  %170 = load %struct.thread*, %struct.thread** %4, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* @UIO_SYSSPACE, align 4
  %174 = load %struct.timespec*, %struct.timespec** %8, align 8
  %175 = load i32, i32* @UIO_SYSSPACE, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @kern_utimensat(%struct.thread* %170, i32 %171, i8* %172, i32 %173, %struct.timespec* %174, i32 %175, i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @LFREEPATH(i8* %178)
  br label %180

180:                                              ; preds = %169, %163
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %146, %127, %62, %48, %33
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @copyin(i32*, %struct.l_timespec*, i32) #1

declare dso_local i64 @linux_utimensat_nsec_valid(i32) #1

declare dso_local i32 @LCONVPATHEXIST_AT(%struct.thread*, i32*, i8**, i32) #1

declare dso_local i32 @kern_futimens(%struct.thread*, i32, %struct.timespec*, i32) #1

declare dso_local i32 @kern_utimensat(%struct.thread*, i32, i8*, i32, %struct.timespec*, i32, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

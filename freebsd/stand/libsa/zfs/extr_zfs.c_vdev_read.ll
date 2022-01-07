; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_vdev_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_vdev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vdev_read: out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i64)* @vdev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_read(i32* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %30 = call i32 @ioctl(i32 %28, i32 %29, i32* %19)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %194

35:                                               ; preds = %5
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %19, align 4
  %38 = udiv i32 %36, %37
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %19, align 4
  %41 = urem i32 %39, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* %19, align 4
  %47 = call i64 @roundup2(i64 %45, i32 %46)
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %49, %50
  %52 = sub i64 %48, %51
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %35
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %56, %57
  %59 = load i32, i32* %19, align 4
  %60 = zext i32 %59 to i64
  %61 = icmp ugt i64 %58, %60
  br label %62

62:                                               ; preds = %55, %35
  %63 = phi i1 [ false, %35 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %20, align 4
  %65 = load i64, i64* %17, align 8
  store i64 %65, i64* %18, align 8
  %66 = load i64, i64* %15, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %19, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %18, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %18, align 8
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %19, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %18, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %18, align 8
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i64, i64* %15, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %19, align 4
  %89 = call i8* @zfs_alloc(i32 %88)
  store i8* %89, i8** %23, align 8
  %90 = load i8*, i8** %23, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  store i32 %94, i32* %6, align 4
  br label %194

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %19, align 4
  %100 = mul i32 %98, %99
  %101 = load i32, i32* @SEEK_SET, align 4
  %102 = call i32 @lseek(i32 %97, i32 %100, i32 %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @errno, align 4
  store i32 %105, i32* %13, align 4
  br label %185

106:                                              ; preds = %96
  %107 = load i64, i64* %15, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = load i8*, i8** %23, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i64 @read(i32 %110, i8* %111, i32 %112)
  store i64 %113, i64* %14, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i32, i32* %19, align 4
  %116 = zext i32 %115 to i64
  %117 = icmp ne i64 %114, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* @EIO, align 4
  store i32 %119, i32* %13, align 4
  br label %185

120:                                              ; preds = %109
  %121 = load i8*, i8** %22, align 8
  %122 = load i8*, i8** %23, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i32, i32* %19, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %15, align 8
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @min(i32 %129, i64 %130)
  %132 = call i32 @memcpy(i8* %121, i8* %124, i32 %131)
  %133 = load i32, i32* %19, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %15, align 8
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @min(i32 %137, i64 %138)
  %140 = load i8*, i8** %22, align 8
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %22, align 8
  br label %143

143:                                              ; preds = %120, %106
  %144 = load i64, i64* %18, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load i32, i32* %12, align 4
  %148 = load i8*, i8** %22, align 8
  %149 = load i64, i64* %18, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i64 @read(i32 %147, i8* %148, i32 %150)
  store i64 %151, i64* %14, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %18, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* @EIO, align 4
  store i32 %156, i32* %13, align 4
  br label %185

157:                                              ; preds = %146
  %158 = load i64, i64* %18, align 8
  %159 = load i8*, i8** %22, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 %158
  store i8* %160, i8** %22, align 8
  br label %161

161:                                              ; preds = %157, %143
  %162 = load i32, i32* %20, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = load i8*, i8** %23, align 8
  %167 = load i32, i32* %19, align 4
  %168 = call i64 @read(i32 %165, i8* %166, i32 %167)
  store i64 %168, i64* %14, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i32, i32* %19, align 4
  %171 = zext i32 %170 to i64
  %172 = icmp ne i64 %169, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* @EIO, align 4
  store i32 %174, i32* %13, align 4
  br label %185

175:                                              ; preds = %164
  %176 = load i8*, i8** %22, align 8
  %177 = load i8*, i8** %23, align 8
  %178 = load i32, i32* %19, align 4
  %179 = zext i32 %178 to i64
  %180 = load i64, i64* %16, align 8
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memcpy(i8* %176, i8* %177, i32 %182)
  br label %184

184:                                              ; preds = %175, %161
  store i32 0, i32* %13, align 4
  br label %185

185:                                              ; preds = %184, %173, %155, %118, %104
  %186 = load i8*, i8** %23, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i8*, i8** %23, align 8
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @zfs_free(i8* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %13, align 4
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %192, %92, %33
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i8* @zfs_alloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @zfs_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

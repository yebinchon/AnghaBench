; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_insert_scrambled_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_insert_scrambled_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32, i8*, i32, i8*, %struct.rad_server* }
%struct.rad_server = type { i8* }

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@POS_AUTH = common dso_local global i64 0, align 8
@LEN_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rad_handle*, i32)* @insert_scrambled_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_scrambled_password(%struct.rad_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.rad_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rad_server*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %17 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %16, i32 0, i32 4
  %18 = load %struct.rad_server*, %struct.rad_server** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %18, i64 %20
  store %struct.rad_server* %21, %struct.rad_server** %8, align 8
  %22 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %23 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %29 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 15
  %32 = and i32 %31, -16
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi i32 [ 16, %26 ], [ %32, %27 ]
  store i32 %34, i32* %9, align 4
  %35 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %36 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* @POS_AUTH, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i32, i32* @LEN_AUTH, align 4
  %41 = call i32 @memcpy(i8* %15, i8* %39, i32 %40)
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %95, %33
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  %47 = call i32 @MD5Init(i32* %5)
  %48 = load %struct.rad_server*, %struct.rad_server** %8, align 8
  %49 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.rad_server*, %struct.rad_server** %8, align 8
  %52 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @MD5Update(i32* %5, i8* %50, i32 %54)
  %56 = call i32 @MD5Update(i32* %5, i8* %15, i32 16)
  %57 = call i32 @MD5Final(i8* %15, i32* %5)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %91, %46
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %63 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %15, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = xor i32 %76, %71
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  %79 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %80 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %83 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %81, i64 %89
  store i8 %78, i8* %90, align 1
  br label %91

91:                                               ; preds = %61
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %58

94:                                               ; preds = %58
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 16
  store i32 %97, i32* %10, align 4
  br label %42

98:                                               ; preds = %42
  %99 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @MD5Init(i32*) #2

declare dso_local i32 @MD5Update(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @MD5Final(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

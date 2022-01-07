; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_crypt_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_crypt_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.tac_msg = type { i32, i8*, i8, i8, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8* }

@TAC_UNENCRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tac_handle*, %struct.tac_msg*)* @crypt_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_msg(%struct.tac_handle* %0, %struct.tac_msg* %1) #0 {
  %3 = alloca %struct.tac_handle*, align 8
  %4 = alloca %struct.tac_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %3, align 8
  store %struct.tac_msg* %1, %struct.tac_msg** %4, align 8
  %13 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %14 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %17 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @TAC_UNENCRYPTED, align 4
  %29 = load %struct.tac_msg*, %struct.tac_msg** %4, align 8
  %30 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.tac_msg*, %struct.tac_msg** %4, align 8
  %35 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TAC_UNENCRYPTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %111

41:                                               ; preds = %33
  %42 = load %struct.tac_msg*, %struct.tac_msg** %4, align 8
  %43 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ntohl(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = call i32 @MD5Init(i32* %6)
  %47 = load %struct.tac_msg*, %struct.tac_msg** %4, align 8
  %48 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32*, ...) @MD5Update(i32* %6, i8* %49, i64 8)
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i32 (i32*, ...) @MD5Update(i32* %6, i8* %51, i32 %53)
  %55 = load %struct.tac_msg*, %struct.tac_msg** %4, align 8
  %56 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %55, i32 0, i32 2
  %57 = call i32 (i32*, ...) @MD5Update(i32* %6, i8* %56, i64 1)
  %58 = load %struct.tac_msg*, %struct.tac_msg** %4, align 8
  %59 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %58, i32 0, i32 3
  %60 = call i32 (i32*, ...) @MD5Update(i32* %6, i8* %59, i64 1)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %106, %41
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %62
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %68 = call i32 @MD5Final(i8* %67, i32* %7)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %72, 16
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 16, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %66
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %99, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load %struct.tac_msg*, %struct.tac_msg** %4, align 8
  %87 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = xor i32 %96, %85
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 1
  br label %99

99:                                               ; preds = %80
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %76

102:                                              ; preds = %76
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %7, align 4
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %105 = call i32 (i32*, ...) @MD5Update(i32* %7, i8* %104, i64 16)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 16
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %9, align 4
  br label %62

111:                                              ; preds = %40, %62
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MD5Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

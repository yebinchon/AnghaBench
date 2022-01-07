; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_restrict_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_restrict_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@__const.send_restrict_entry.addr_fmtu = private unnamed_addr constant [8 x i8] c"addr.%u\00", align 1
@__const.send_restrict_entry.mask_fmtu = private unnamed_addr constant [8 x i8] c"mask.%u\00", align 1
@__const.send_restrict_entry.hits_fmt = private unnamed_addr constant [8 x i8] c"hits.%u\00", align 1
@__const.send_restrict_entry.flags_fmt = private unnamed_addr constant [9 x i8] c"flags.%u\00", align 1
@RESLIST_FIELDS = common dso_local global i32 0, align 4
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64)* @send_restrict_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_restrict_entry(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  %9 = alloca [8 x i8], align 1
  %10 = alloca [9 x i8], align 1
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %24 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.send_restrict_entry.addr_fmtu, i32 0, i32 0), i64 8, i1 false)
  %25 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.send_restrict_entry.mask_fmtu, i32 0, i32 0), i64 8, i1 false)
  %26 = bitcast [8 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.send_restrict_entry.hits_fmt, i32 0, i32 0), i64 8, i1 false)
  %27 = bitcast [9 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.send_restrict_entry.flags_fmt, i32 0, i32 0), i64 9, i1 false)
  %28 = load i32, i32* @RESLIST_FIELDS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sockaddrs_from_restrict_u(i32* %18, i32* %19, %struct.TYPE_4__* %32, i32 %33)
  %35 = call i64 @COUNTOF(i64* %31)
  store i64 %35, i64* %17, align 8
  %36 = call i32 @ZERO(i64* %31)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %141, %3
  %38 = load i64, i64* %17, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %147

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = call i32 (...) @rand()
  %45 = call i32 (...) @rand()
  %46 = shl i32 %45, 16
  %47 = xor i32 %44, %46
  store i32 %47, i32* %15, align 4
  store i32 31, i32* %14, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %15, align 4
  %50 = and i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = call i64 @COUNTOF(i64* %31)
  %53 = srem i64 %51, %52
  store i64 %53, i64* %16, align 8
  %54 = load i32, i32* %15, align 4
  %55 = ashr i32 %54, 2
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %63, %48
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds i64, i64* %31, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i64, i64* %16, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i64 @COUNTOF(i64* %31)
  %67 = srem i64 %65, %66
  store i64 %67, i64* %16, align 8
  br label %58

68:                                               ; preds = %58
  %69 = load i64, i64* %16, align 8
  switch i64 %69, label %141 [
    i64 0, label %70
    i64 1, label %82
    i64 2, label %94
    i64 3, label %105
  ]

70:                                               ; preds = %68
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %73 = load i64, i64* %6, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %71, i32 32, i8* %72, i8* %74)
  %76 = call i8* @stoa(i32* %18)
  store i8* %76, i8** %20, align 8
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %78 = load i8*, i8** %20, align 8
  %79 = load i8*, i8** %20, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call i32 @ctl_putunqstr(i8* %77, i8* %78, i32 %80)
  br label %141

82:                                               ; preds = %68
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %85 = load i64, i64* %6, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %83, i32 32, i8* %84, i8* %86)
  %88 = call i8* @stoa(i32* %19)
  store i8* %88, i8** %20, align 8
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %90 = load i8*, i8** %20, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = call i32 @ctl_putunqstr(i8* %89, i8* %90, i32 %92)
  br label %141

94:                                               ; preds = %68
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %97 = load i64, i64* %6, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %95, i32 32, i8* %96, i8* %98)
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ctl_putuint(i8* %100, i32 %103)
  br label %141

105:                                              ; preds = %68
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %107 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %108 = load i64, i64* %6, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %106, i32 32, i8* %107, i8* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @res_match_flags(i32 %113)
  store i8* %114, i8** %22, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @res_access_flags(i32 %117)
  store i8* %118, i8** %23, align 8
  %119 = load i8*, i8** %22, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 0, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %105
  %125 = load i8*, i8** %23, align 8
  store i8* %125, i8** %20, align 8
  br label %135

126:                                              ; preds = %105
  %127 = load i8*, i8** %21, align 8
  %128 = call i32 @LIB_GETBUF(i8* %127)
  %129 = load i8*, i8** %21, align 8
  %130 = load i32, i32* @LIB_BUFLENGTH, align 4
  %131 = load i8*, i8** %22, align 8
  %132 = load i8*, i8** %23, align 8
  %133 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %129, i32 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %131, i8* %132)
  %134 = load i8*, i8** %21, align 8
  store i8* %134, i8** %20, align 8
  br label %135

135:                                              ; preds = %126, %124
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %137 = load i8*, i8** %20, align 8
  %138 = load i8*, i8** %20, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = call i32 @ctl_putunqstr(i8* %136, i8* %137, i32 %139)
  br label %141

141:                                              ; preds = %68, %135, %94, %82, %70
  %142 = load i64, i64* @TRUE, align 8
  %143 = load i64, i64* %16, align 8
  %144 = getelementptr inbounds i64, i64* %31, i64 %143
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %17, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* %17, align 8
  br label %37

147:                                              ; preds = %37
  %148 = load i64, i64* %6, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @send_random_tag_value(i32 %149)
  %151 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %151)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sockaddrs_from_restrict_u(i32*, i32*, %struct.TYPE_4__*, i32) #3

declare dso_local i64 @COUNTOF(i64*) #3

declare dso_local i32 @ZERO(i64*) #3

declare dso_local i32 @rand(...) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #3

declare dso_local i8* @stoa(i32*) #3

declare dso_local i32 @ctl_putunqstr(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @ctl_putuint(i8*, i32) #3

declare dso_local i8* @res_match_flags(i32) #3

declare dso_local i8* @res_access_flags(i32) #3

declare dso_local i32 @LIB_GETBUF(i8*) #3

declare dso_local i32 @send_random_tag_value(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

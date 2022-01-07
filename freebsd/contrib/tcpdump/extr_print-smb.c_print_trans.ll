; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_print_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_print_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@request = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [187 x i8] c"TotParamCnt=[d] \0ATotDataCnt=[d] \0AMaxParmCnt=[d] \0AMaxDataCnt=[d]\0AMaxSCnt=[d] \0ATransFlags=[w] \0ARes1=[w] \0ARes2=[w] \0ARes3=[w]\0AParamCnt=[d] \0AParamOff=[d] \0ADataCnt=[d] \0ADataOff=[d] \0ASUCnt=[d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"|Name=[S]\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"|Param \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"|Data \00", align 1
@.str.4 = private unnamed_addr constant [127 x i8] c"TotParamCnt=[d] \0ATotDataCnt=[d] \0ARes1=[d]\0AParamCnt=[d] \0AParamOff=[d] \0ARes2=[d] \0ADataCnt=[d] \0ADataOff=[d] \0ARes3=[d]\0ALsetup=[d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"|Unknown \00", align 1
@unicodestr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"smb_bcc=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\\MAILSLOT\\BROWSE\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\\PIPE\\LANMAN\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @print_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_trans(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32* %22, i32** %18, align 8
  %23 = load i64, i64* @request, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %5
  %26 = load i32*, i32** %18, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 24
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ND_TCHECK2(i32 %28, i32 2)
  %30 = load i32*, i32** %18, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 18
  %32 = call i32 @EXTRACT_LE_16BITS(i32* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 20
  %36 = call i32 @EXTRACT_LE_16BITS(i32* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %17, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 22
  %41 = call i32 @EXTRACT_LE_16BITS(i32* %40)
  store i32 %41, i32* %19, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 24
  %45 = call i32 @EXTRACT_LE_16BITS(i32* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %16, align 8
  store i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %71

48:                                               ; preds = %5
  %49 = load i32*, i32** %18, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 14
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK2(i32 %51, i32 2)
  %53 = load i32*, i32** %18, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = call i32 @EXTRACT_LE_16BITS(i32* %54)
  store i32 %55, i32* %20, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  %59 = call i32 @EXTRACT_LE_16BITS(i32* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %17, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = call i32 @EXTRACT_LE_16BITS(i32* %63)
  store i32 %64, i32* %19, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 14
  %68 = call i32 @EXTRACT_LE_16BITS(i32* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32* %70, i32** %16, align 8
  store i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %71

71:                                               ; preds = %48, %25
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i8*, i8** %12, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 2, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = load i32*, i32** %10, align 8
  %85 = call i32* @min(i32* %83, i32* %84)
  %86 = load i32, i32* @unicodestr, align 4
  %87 = call i32 @smb_fdata(i32* %72, i32* %74, i8* %75, i32* %85, i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ND_TCHECK2(i32 %89, i32 2)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @EXTRACT_LE_16BITS(i32* %91)
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %11, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i64, i64* %11, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 @ND_PRINT(i32* %96)
  %98 = load i64, i64* %11, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %170

100:                                              ; preds = %71
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i8*, i8** %13, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  %112 = load i32, i32* @unicodestr, align 4
  %113 = call i32 @smb_fdata(i32* %101, i32* %103, i8* %104, i32* %111, i32 %112)
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = bitcast i32* %115 to i8*
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %100
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* %20, align 4
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @print_browse(i32* %120, i32* %121, i32 %122, i32* %123, i32 %124)
  br label %177

126:                                              ; preds = %100
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = bitcast i32* %128 to i8*
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load i32*, i32** %6, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* %20, align 4
  %136 = load i32*, i32** %16, align 8
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @print_ipc(i32* %133, i32* %134, i32 %135, i32* %136, i32 %137)
  br label %177

139:                                              ; preds = %126
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32*, i32** %10, align 8
  %151 = call i32* @min(i32* %149, i32* %150)
  %152 = load i32, i32* @unicodestr, align 4
  %153 = call i32 @smb_fdata(i32* %143, i32* %144, i8* %145, i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %142, %139
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load i32*, i32** %6, align 8
  %159 = load i32*, i32** %16, align 8
  %160 = load i8*, i8** %15, align 8
  %161 = load i32*, i32** %16, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32*, i32** %10, align 8
  %166 = call i32* @min(i32* %164, i32* %165)
  %167 = load i32, i32* @unicodestr, align 4
  %168 = call i32 @smb_fdata(i32* %158, i32* %159, i8* %160, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %157, %154
  br label %170

170:                                              ; preds = %169, %71
  br label %177

171:                                              ; No predecessors!
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* @tstr, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i32*
  %176 = call i32 @ND_PRINT(i32* %175)
  br label %177

177:                                              ; preds = %171, %170, %132, %119
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @smb_fdata(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32* @min(i32*, i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_browse(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @print_ipc(i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

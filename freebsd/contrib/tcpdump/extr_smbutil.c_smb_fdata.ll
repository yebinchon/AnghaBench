; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_smb_fdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_smb_fdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smb_fdata.depth = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Data: (%lu bytes)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @smb_fdata(i32* %0, i32* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %16

16:                                               ; preds = %131, %5
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %132

20:                                               ; preds = %16
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %122 [
    i32 42, label %24
    i32 124, label %55
    i32 37, label %64
    i32 35, label %68
    i32 91, label %72
  ]

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %51, %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ult i32* %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32, i32* @smb_fdata.depth, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @smb_fdata.depth, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32* @smb_fdata(i32* %34, i32* %35, i8* %36, i32* %37, i32 %38)
  store i32* %39, i32** %14, align 8
  %40 = load i32, i32* @smb_fdata.depth, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @smb_fdata.depth, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32* null, i32** %6, align 8
  br label %156

45:                                               ; preds = %31
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  store i32* %50, i32** %6, align 8
  br label %156

51:                                               ; preds = %45
  %52 = load i32*, i32** %14, align 8
  store i32* %52, i32** %8, align 8
  br label %27

53:                                               ; preds = %27
  %54 = load i32*, i32** %8, align 8
  store i32* %54, i32** %6, align 8
  br label %156

55:                                               ; preds = %20
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp uge i32* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32*, i32** %8, align 8
  store i32* %62, i32** %6, align 8
  br label %156

63:                                               ; preds = %55
  br label %131

64:                                               ; preds = %20
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %8, align 8
  br label %131

68:                                               ; preds = %20
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i32*, i32** %8, align 8
  store i32* %71, i32** %6, align 8
  br label %156

72:                                               ; preds = %20
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = icmp uge i32* %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32*, i32** %8, align 8
  store i32* %79, i32** %6, align 8
  br label %156

80:                                               ; preds = %72
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %82 = call i32 @memset(i8* %81, i32 0, i32 128)
  %83 = load i8*, i8** %9, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 93)
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = add nsw i64 %89, 1
  %91 = icmp ugt i64 %90, 128
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = load i32*, i32** %8, align 8
  store i32* %93, i32** %6, align 8
  br label %156

94:                                               ; preds = %80
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @strncpy(i8* %95, i8* %96, i32 %102)
  %104 = load i8*, i8** %13, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8* %111, i8** %9, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32* @smb_fdata1(i32* %112, i32* %113, i8* %114, i32* %115, i32 %116)
  store i32* %117, i32** %8, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %94
  store i32* null, i32** %6, align 8
  br label %156

121:                                              ; preds = %94
  br label %131

122:                                              ; preds = %20
  %123 = load i32*, i32** %7, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i64
  %127 = inttoptr i64 %126 to i32*
  %128 = call i32 @ND_PRINT(i32* %127)
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  br label %131

131:                                              ; preds = %122, %121, %64, %63
  br label %16

132:                                              ; preds = %16
  %133 = load i32, i32* @smb_fdata.depth, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %132
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = icmp ult i32* %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load i32*, i32** %10, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i64 @PTR_DIFF(i32* %140, i32* %141)
  store i64 %142, i64* %15, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i64, i64* %15, align 8
  %145 = inttoptr i64 %144 to i32*
  %146 = call i32 @ND_PRINT(i32* %145)
  %147 = load i32*, i32** %7, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load i64, i64* %15, align 8
  %150 = call i32 @smb_print_data(i32* %147, i32* %148, i64 %149)
  %151 = load i32*, i32** %8, align 8
  %152 = load i64, i64* %15, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %6, align 8
  br label %156

154:                                              ; preds = %135, %132
  %155 = load i32*, i32** %8, align 8
  store i32* %155, i32** %6, align 8
  br label %156

156:                                              ; preds = %154, %139, %120, %92, %78, %68, %61, %53, %49, %44
  %157 = load i32*, i32** %6, align 8
  ret i32* %157
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @smb_fdata1(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @PTR_DIFF(i32*, i32*) #1

declare dso_local i32 @smb_print_data(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

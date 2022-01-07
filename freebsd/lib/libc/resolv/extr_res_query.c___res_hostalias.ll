; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_query.c___res_hostalias.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_query.c___res_hostalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@RES_NOALIASES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HOSTALIASES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"re\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @res_hostalias(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RES_NOALIASES, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %16, align 4
  br label %130

28:                                               ; preds = %4
  %29 = call i64 (...) @issetugid()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8* null, i8** %5, align 8
  store i32 1, i32* %16, align 4
  br label %130

32:                                               ; preds = %28
  %33 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %38, i32** %15, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  store i8* null, i8** %5, align 8
  store i32 1, i32* %16, align 4
  br label %130

41:                                               ; preds = %36
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @setbuf(i32* %42, i32* null)
  %44 = sub i64 %18, 1
  %45 = getelementptr inbounds i8, i8* %20, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %126, %41
  %47 = trunc i64 %18 to i32
  %48 = load i32*, i32** %15, align 8
  %49 = call i64 @fgets(i8* %20, i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %127

51:                                               ; preds = %46
  store i8* %20, i8** %11, align 8
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  br label %52

69:                                               ; preds = %63
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %127

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @ns_samename(i8* %20, i8* %76)
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %126

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %86, %79
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @isspace(i8 zeroext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %80

87:                                               ; preds = %80
  %88 = load i8*, i8** %11, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  br label %127

92:                                               ; preds = %87
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %109, %92
  %96 = load i8*, i8** %12, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isspace(i8 zeroext %102)
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %100, %95
  %107 = phi i1 [ false, %95 ], [ %105, %100 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %12, align 8
  br label %95

112:                                              ; preds = %106
  %113 = load i8*, i8** %12, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* %9, align 8
  %117 = sub i64 %116, 1
  %118 = call i32 @strncpy(i8* %114, i8* %115, i64 %117)
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = sub i64 %120, 1
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @fclose(i32* %123)
  %125 = load i8*, i8** %8, align 8
  store i8* %125, i8** %5, align 8
  store i32 1, i32* %16, align 4
  br label %130

126:                                              ; preds = %74
  br label %46

127:                                              ; preds = %91, %73, %46
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @fclose(i32* %128)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %16, align 4
  br label %130

130:                                              ; preds = %127, %112, %40, %31, %27
  %131 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i8*, i8** %5, align 8
  ret i8* %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @issetugid(...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @setbuf(i32*, i32*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @ns_samename(i8*, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

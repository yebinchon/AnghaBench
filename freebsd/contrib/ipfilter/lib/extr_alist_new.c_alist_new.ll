; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_alist_new.c_alist_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_alist_new.c_alist_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"alist_new out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot parse hostname\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @alist_new(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AF_UNSPEC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @AF_INET6, align 4
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @AF_INET, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AF_INET, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @AF_INET6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %160

35:                                               ; preds = %30, %26
  %36 = call %struct.TYPE_7__* @calloc(i32 1, i32 20)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %12, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %160

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @ISSPACE(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %43

51:                                               ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 33
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  br label %61

61:                                               ; preds = %66, %56
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @ISSPACE(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  br label %61

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %51
  store i32 -1, i32* %10, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 47)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i32 @atoi(i8* %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @AF_INET, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 32
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %157

88:                                               ; preds = %84
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @sscanf(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9)
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 33
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 32, %97
  %99 = shl i32 -1, %98
  store i32 %99, i32* %13, align 4
  br label %116

100:                                              ; preds = %93, %88
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 -16777216, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %115

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -65536, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %114

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 -256, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %113

112:                                              ; preds = %108
  store i32 -1, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %111
  br label %114

114:                                              ; preds = %113, %107
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %96
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @htonl(i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  br label %132

121:                                              ; preds = %80
  %122 = load i32, i32* %10, align 4
  %123 = icmp sgt i32 %122, 128
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %157

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @fill6bits(i32 %126, i32 %130)
  br label %132

132:                                              ; preds = %125, %116
  %133 = load i32, i32* %4, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = call i32 @gethost(i32 %133, i8* %134, i32* %136)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i8*, i8** %11, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i8*, i8** %11, align 8
  store i8 47, i8* %143, align 1
  br label %144

144:                                              ; preds = %142, %139
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 @fprintf(i32 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %157

147:                                              ; preds = %132
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i8*, i8** %11, align 8
  store i8 47, i8* %154, align 1
  br label %155

155:                                              ; preds = %153, %147
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %156, %struct.TYPE_7__** %3, align 8
  br label %160

157:                                              ; preds = %144, %124, %87
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %159 = call i32 @free(%struct.TYPE_7__* %158)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %160

160:                                              ; preds = %157, %155, %39, %34
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %161
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fill6bits(i32, i32) #1

declare dso_local i32 @gethost(i32, i8*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

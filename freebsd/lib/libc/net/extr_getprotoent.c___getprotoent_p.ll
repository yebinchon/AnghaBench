; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c___getprotoent_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c___getprotoent_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i8*, i64, i8** }
%struct.protoent_data = type { i8**, i32*, i32 }

@_PATH_PROTOCOLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@USHRT_MAX = common dso_local global i64 0, align 8
@_MAXALIASES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__getprotoent_p(%struct.protoent* %0, %struct.protoent_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.protoent*, align 8
  %5 = alloca %struct.protoent_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.protoent* %0, %struct.protoent** %4, align 8
  store %struct.protoent_data* %1, %struct.protoent_data** %5, align 8
  %11 = load %struct.protoent_data*, %struct.protoent_data** %5, align 8
  %12 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @_PATH_PROTOCOLS, align 4
  %17 = call i32* @fopen(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.protoent_data*, %struct.protoent_data** %5, align 8
  %19 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = icmp eq i32* %17, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %162

22:                                               ; preds = %15, %2
  br label %23

23:                                               ; preds = %99, %54, %38, %22
  %24 = load %struct.protoent_data*, %struct.protoent_data** %5, align 8
  %25 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.protoent_data*, %struct.protoent_data** %5, align 8
  %28 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* @fgets(i32 %26, i32 4, i32* %29)
  store i8* %30, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %162

33:                                               ; preds = %23
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %23

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @strpbrk(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.protoent*, %struct.protoent** %4, align 8
  %49 = getelementptr inbounds %struct.protoent, %struct.protoent* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @strpbrk(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %23

55:                                               ; preds = %46
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  store i8 0, i8* %56, align 1
  br label %58

58:                                               ; preds = %70, %55
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 9
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ true, %58 ], [ %67, %63 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  br label %58

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = call i8* @strpbrk(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  store i8 0, i8* %79, align 1
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strtol(i8* %82, i8** %9, i32 10)
  store i64 %83, i64* %10, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %10, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @USHRT_MAX, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %92, %87, %81
  br label %23

100:                                              ; preds = %95
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.protoent*, %struct.protoent** %4, align 8
  %103 = getelementptr inbounds %struct.protoent, %struct.protoent* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.protoent_data*, %struct.protoent_data** %5, align 8
  %105 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load %struct.protoent*, %struct.protoent** %4, align 8
  %108 = getelementptr inbounds %struct.protoent, %struct.protoent* %107, i32 0, i32 2
  store i8** %106, i8*** %108, align 8
  store i8** %106, i8*** %8, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %160

111:                                              ; preds = %100
  %112 = load i8*, i8** %6, align 8
  store i8* %112, i8** %7, align 8
  br label %113

113:                                              ; preds = %158, %133, %111
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %116, %113
  %122 = phi i1 [ false, %113 ], [ %120, %116 ]
  br i1 %122, label %123, label %159

123:                                              ; preds = %121
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %7, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 9
  br i1 %132, label %133, label %136

133:                                              ; preds = %128, %123
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  br label %113

136:                                              ; preds = %128
  %137 = load i8**, i8*** %8, align 8
  %138 = load %struct.protoent_data*, %struct.protoent_data** %5, align 8
  %139 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %138, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* @_MAXALIASES, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %140, i64 %143
  %145 = icmp ult i8** %137, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load i8*, i8** %7, align 8
  %148 = load i8**, i8*** %8, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %149, i8*** %8, align 8
  store i8* %147, i8** %148, align 8
  br label %150

150:                                              ; preds = %146, %136
  %151 = load i8*, i8** %7, align 8
  %152 = call i8* @strpbrk(i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %152, i8** %7, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  store i8 0, i8* %156, align 1
  br label %158

158:                                              ; preds = %155, %150
  br label %113

159:                                              ; preds = %121
  br label %160

160:                                              ; preds = %159, %100
  %161 = load i8**, i8*** %8, align 8
  store i8* null, i8** %161, align 8
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %32, %21
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i8* @fgets(i32, i32, i32*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/bin/openpam_dump_policy/extr_openpam_dump_policy.c_openpam_dump_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/bin/openpam_dump_policy/extr_openpam_dump_policy.c_openpam_dump_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@PAM_BUF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"extern struct pam_module %s_pam_module;\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"static char *%s_%d_optv[] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\09\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\09NULL,\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"static pam_chain_t %s_%d;\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"static pam_chain_t %s_%d = {\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"\09.module = &%s_pam_module,\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\09.flag = 0x%08x,\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\09.optc = %d,\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\09.optv = %s_%d_optv,\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\09.next = &%s_%d,\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\09.next = NULL,\0A\00", align 1
@PAM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_dump_chain(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %150, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %156

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi i8* [ %23, %22 ], [ %29, %24 ]
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @PAM_BUF_ERR, align 4
  store i32 %36, i32* %3, align 4
  br label %158

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %52, %37
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 46
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %39

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  store i8** %64, i8*** %7, align 8
  br label %65

65:                                               ; preds = %103, %55
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i8**, i8*** %7, align 8
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %98, %69
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @isprint(i8 zeroext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 34
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %97

92:                                               ; preds = %82, %77
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %8, align 8
  br label %73

101:                                              ; preds = %73
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101
  %104 = load i8**, i8*** %7, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %7, align 8
  br label %65

106:                                              ; preds = %65
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = icmp ne %struct.TYPE_5__* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %114, i32 %116)
  br label %118

118:                                              ; preds = %113, %106
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %119, i32 %120)
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %132, i32 %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = icmp ne %struct.TYPE_5__* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %118
  %140 = load i8*, i8** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %140, i32 %142)
  br label %146

144:                                              ; preds = %118
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @free(i8* %148)
  br label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %5, align 8
  br label %10

156:                                              ; preds = %10
  %157 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %35
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_parse_ncp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_parse_ncp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i8**, i64, i32*, i32*, i32*, i32, i32, i32* }

@NC_BADFILE = common dso_local global i32 0, align 4
@nc_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@NC_TPI_COTS_ORD_S = common dso_local global i32 0, align 4
@NC_TPI_COTS_ORD = common dso_local global i32 0, align 4
@NC_TPI_COTS_S = common dso_local global i32 0, align 4
@NC_TPI_COTS = common dso_local global i32 0, align 4
@NC_TPI_CLTS_S = common dso_local global i32 0, align 4
@NC_TPI_CLTS = common dso_local global i32 0, align 4
@NC_TPI_RAW_S = common dso_local global i32 0, align 4
@NC_TPI_RAW = common dso_local global i32 0, align 4
@NC_NOFLAG = common dso_local global i32 0, align 4
@NC_VISIBLE = common dso_local global i32 0, align 4
@NC_BROADCAST = common dso_local global i32 0, align 4
@NC_NOLOOKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.netconfig*)* @parse_ncp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ncp(i8* %0, %struct.netconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netconfig*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.netconfig* %1, %struct.netconfig** %5, align 8
  %10 = load i32, i32* @NC_BADFILE, align 4
  store i32 %10, i32* @nc_error, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strtok_r(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %21 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %20, i32 0, i32 7
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %184

24:                                               ; preds = %2
  %25 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %25, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %184

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @NC_TPI_COTS_ORD_S, align 4
  %31 = call i64 @strcmp(i8* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @NC_TPI_COTS_ORD, align 4
  %35 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %36 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  br label %68

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @NC_TPI_COTS_S, align 4
  %40 = call i64 @strcmp(i8* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @NC_TPI_COTS, align 4
  %44 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %45 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  br label %67

46:                                               ; preds = %37
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @NC_TPI_CLTS_S, align 4
  %49 = call i64 @strcmp(i8* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @NC_TPI_CLTS, align 4
  %53 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %54 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @NC_TPI_RAW_S, align 4
  %58 = call i64 @strcmp(i8* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @NC_TPI_RAW, align 4
  %62 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %63 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  br label %65

64:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %184

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67, %33
  %69 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %69, i8** %6, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %184

72:                                               ; preds = %68
  %73 = load i32, i32* @NC_NOFLAG, align 4
  %74 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %75 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %100, %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  switch i32 %84, label %98 [
    i32 129, label %85
    i32 128, label %86
    i32 130, label %92
  ]

85:                                               ; preds = %81
  br label %99

86:                                               ; preds = %81
  %87 = load i32, i32* @NC_VISIBLE, align 4
  %88 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %89 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %99

92:                                               ; preds = %81
  %93 = load i32, i32* @NC_BROADCAST, align 4
  %94 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %95 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %99

98:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %184

99:                                               ; preds = %92, %86, %85
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  br label %76

103:                                              ; preds = %76
  %104 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %107 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %106, i32 0, i32 4
  store i32* %105, i32** %107, align 8
  %108 = icmp eq i32* %105, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 -1, i32* %3, align 4
  br label %184

110:                                              ; preds = %103
  %111 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %114 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  %115 = icmp eq i32* %112, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 -1, i32* %3, align 4
  br label %184

117:                                              ; preds = %110
  %118 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %121 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %120, i32 0, i32 2
  store i32* %119, i32** %121, align 8
  %122 = icmp eq i32* %119, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 -1, i32* %3, align 4
  br label %184

124:                                              ; preds = %117
  %125 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %125, i8** %6, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  br label %184

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* @NC_NOLOOKUP, align 4
  %131 = call i64 @strcmp(i8* %129, i32 %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %135 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %137 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %136, i32 0, i32 0
  store i8** null, i8*** %137, align 8
  br label %183

138:                                              ; preds = %128
  %139 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %140 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = call i32 @free(i8** %141)
  %143 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %144 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %143, i32 0, i32 0
  store i8** null, i8*** %144, align 8
  %145 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %146 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %167, %138
  %148 = load i8*, i8** %6, align 8
  store i8* %148, i8** %9, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %182

150:                                              ; preds = %147
  %151 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %152 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %155 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  %158 = call i8** @reallocarray(i8** %153, i64 %157, i32 8)
  store i8** %158, i8*** %8, align 8
  %159 = icmp eq i8** %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %150
  %161 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %162 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = call i32 @free(i8** %163)
  %165 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %166 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %165, i32 0, i32 0
  store i8** null, i8*** %166, align 8
  store i32 -1, i32* %3, align 4
  br label %184

167:                                              ; preds = %150
  %168 = load i8*, i8** %9, align 8
  %169 = call i8* @_get_next_token(i8* %168, i8 signext 44)
  store i8* %169, i8** %6, align 8
  %170 = load i8**, i8*** %8, align 8
  %171 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %172 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %171, i32 0, i32 0
  store i8** %170, i8*** %172, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %175 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %174, i32 0, i32 0
  %176 = load i8**, i8*** %175, align 8
  %177 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %178 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = getelementptr inbounds i8*, i8** %176, i64 %179
  store i8* %173, i8** %181, align 8
  br label %147

182:                                              ; preds = %147
  br label %183

183:                                              ; preds = %182, %133
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %160, %127, %123, %116, %109, %98, %71, %64, %27, %23
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i8** @reallocarray(i8**, i64, i32) #1

declare dso_local i8* @_get_next_token(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

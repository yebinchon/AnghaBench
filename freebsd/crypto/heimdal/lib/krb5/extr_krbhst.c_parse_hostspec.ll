; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_parse_hostspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_parse_hostspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_info = type { i8*, i32, i32, i8* }
%struct.krb5_krbhst_data = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@KRB5_KRBHST_HTTP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"http/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"tcp/\00", align 1
@KRB5_KRBHST_TCP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"udp/\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.krb5_krbhst_info* (i32, %struct.krb5_krbhst_data*, i8*, i32, i32)* @parse_hostspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.krb5_krbhst_info* @parse_hostspec(i32 %0, %struct.krb5_krbhst_data* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.krb5_krbhst_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.krb5_krbhst_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.krb5_krbhst_info*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add i64 24, %18
  %20 = call %struct.krb5_krbhst_info* @calloc(i32 1, i64 %19)
  store %struct.krb5_krbhst_info* %20, %struct.krb5_krbhst_info** %14, align 8
  %21 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %22 = icmp eq %struct.krb5_krbhst_info* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store %struct.krb5_krbhst_info* null, %struct.krb5_krbhst_info** %6, align 8
  br label %176

24:                                               ; preds = %5
  %25 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %8, align 8
  %26 = call i8* @krbhst_get_default_proto(%struct.krb5_krbhst_data* %25)
  %27 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %28 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i8*, i8** @KRB5_KRBHST_HTTP, align 8
  %34 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %35 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 7
  store i8* %37, i8** %12, align 8
  br label %71

38:                                               ; preds = %24
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i8*, i8** @KRB5_KRBHST_HTTP, align 8
  %44 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %45 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  store i8* %47, i8** %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @krb5_getportbyname(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 80)
  %50 = call i32 @ntohs(i32 %49)
  store i32 %50, i32* %10, align 4
  br label %70

51:                                               ; preds = %38
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @strncmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i8*, i8** @KRB5_KRBHST_TCP, align 8
  %57 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %58 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %60, i8** %12, align 8
  br label %69

61:                                               ; preds = %51
  %62 = load i8*, i8** %12, align 8
  %63 = call i64 @strncmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %32
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 91
  br i1 %76, label %77, label %116

77:                                               ; preds = %71
  %78 = load i8*, i8** %12, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 93)
  store i8* %79, i8** %13, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %116

81:                                               ; preds = %77
  %82 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %83 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sub nsw i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i8* %84, i8* %86, i32 %93)
  %95 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %96 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sub nsw i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %97, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 58
  br i1 %111, label %112, label %115

112:                                              ; preds = %81
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %12, align 8
  br label %115

115:                                              ; preds = %112, %81
  br label %129

116:                                              ; preds = %77, %71
  %117 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %118 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @strlen(i8* %120)
  %122 = add nsw i64 %121, 1
  %123 = call i64 @strsep_copy(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %119, i64 %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %127 = call i32 @free(%struct.krb5_krbhst_info* %126)
  store %struct.krb5_krbhst_info* null, %struct.krb5_krbhst_info** %6, align 8
  br label %176

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %115
  %130 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %131 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %134 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @strcspn(i8* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %139 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strlwr(i8* %140)
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %144 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %146 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %129
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 @strtol(i8* %156, i8** %15, i32 0)
  %158 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %159 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load i8*, i8** %15, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %165 = call i32 @free(%struct.krb5_krbhst_info* %164)
  store %struct.krb5_krbhst_info* null, %struct.krb5_krbhst_info** %6, align 8
  br label %176

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %149, %129
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  %173 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %167
  %175 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %14, align 8
  store %struct.krb5_krbhst_info* %175, %struct.krb5_krbhst_info** %6, align 8
  br label %176

176:                                              ; preds = %174, %163, %125, %23
  %177 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %6, align 8
  ret %struct.krb5_krbhst_info* %177
}

declare dso_local %struct.krb5_krbhst_info* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @krbhst_get_default_proto(%struct.krb5_krbhst_data*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @krb5_getportbyname(i32, i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strsep_copy(i8**, i8*, i8*, i64) #1

declare dso_local i32 @free(%struct.krb5_krbhst_info*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strlwr(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_parse_path_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_parse_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"You specified too many directory components.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"You specified an invalid directory component.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*, i8*)* @parse_path_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_path_info(%struct.req* %0, i8* %1) #0 {
  %3 = alloca %struct.req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.req* %0, %struct.req** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.req*, %struct.req** %3, align 8
  %9 = getelementptr inbounds %struct.req, %struct.req* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.req*, %struct.req** %3, align 8
  %11 = getelementptr inbounds %struct.req, %struct.req* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.req*, %struct.req** %3, align 8
  %14 = getelementptr inbounds %struct.req, %struct.req* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.req*, %struct.req** %3, align 8
  %17 = getelementptr inbounds %struct.req, %struct.req* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %20, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %5, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 46)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isdigit(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sub nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @mandoc_strndup(i8* %39, i32 %46)
  %48 = load %struct.req*, %struct.req** %3, align 8
  %49 = getelementptr inbounds %struct.req, %struct.req* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @mandoc_strdup(i8* %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.req*, %struct.req** %3, align 8
  %55 = getelementptr inbounds %struct.req, %struct.req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32* %53, i32** %56, align 8
  br label %66

57:                                               ; preds = %32, %27
  %58 = load i8*, i8** %5, align 8
  %59 = call i8* @mandoc_strdup(i8* %58)
  %60 = load %struct.req*, %struct.req** %3, align 8
  %61 = getelementptr inbounds %struct.req, %struct.req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i8* %59, i8** %62, align 8
  %63 = load %struct.req*, %struct.req** %3, align 8
  %64 = getelementptr inbounds %struct.req, %struct.req* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %57, %38
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %181

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 47)
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i8* @mandoc_strndup(i8* %74, i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.req*, %struct.req** %3, align 8
  %84 = getelementptr inbounds %struct.req, %struct.req* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32* %82, i32** %85, align 8
  %86 = load %struct.req*, %struct.req** %3, align 8
  %87 = load %struct.req*, %struct.req** %3, align 8
  %88 = getelementptr inbounds %struct.req, %struct.req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @validate_manpath(%struct.req* %86, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %71
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %181

100:                                              ; preds = %93
  br label %110

101:                                              ; preds = %71
  %102 = load %struct.req*, %struct.req** %3, align 8
  %103 = getelementptr inbounds %struct.req, %struct.req* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @free(i32* %105)
  %107 = load %struct.req*, %struct.req** %3, align 8
  %108 = getelementptr inbounds %struct.req, %struct.req* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %101, %100
  %111 = load i8*, i8** %4, align 8
  %112 = call i64 @strncmp(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %4, align 8
  %116 = call i64 @strncmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %114, %110
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  store i8* %120, i8** %4, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = call i8* @strchr(i8* %121, i8 signext 47)
  store i8* %122, i8** %7, align 8
  %123 = load %struct.req*, %struct.req** %3, align 8
  %124 = getelementptr inbounds %struct.req, %struct.req* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @free(i32* %126)
  %128 = load i8*, i8** %4, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i8* @mandoc_strndup(i8* %128, i32 %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.req*, %struct.req** %3, align 8
  %138 = getelementptr inbounds %struct.req, %struct.req* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  store i32* %136, i32** %139, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %141, i8** %4, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = icmp eq i8* %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %118
  br label %181

146:                                              ; preds = %118
  br label %147

147:                                              ; preds = %146, %114
  %148 = load i8*, i8** %4, align 8
  %149 = call i8* @strchr(i8* %148, i8 signext 47)
  store i8* %149, i8** %7, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8*, i8** %5, align 8
  %153 = icmp ne i8* %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = call i32 @pg_error_badrequest(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* @EXIT_FAILURE, align 4
  %157 = call i32 @exit(i32 %156) #3
  unreachable

158:                                              ; preds = %147
  %159 = load i8*, i8** %4, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load i8*, i8** %4, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = call i8* @mandoc_strndup(i8* %159, i32 %165)
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.req*, %struct.req** %3, align 8
  %169 = getelementptr inbounds %struct.req, %struct.req* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  store i32* %167, i32** %170, align 8
  %171 = load %struct.req*, %struct.req** %3, align 8
  %172 = getelementptr inbounds %struct.req, %struct.req* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = call i64 @validate_arch(i32* %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %158
  %178 = call i32 @pg_error_badrequest(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* @EXIT_FAILURE, align 4
  %180 = call i32 @exit(i32 %179) #3
  unreachable

181:                                              ; preds = %70, %99, %145, %158
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i8* @mandoc_strndup(i8*, i32) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @validate_manpath(%struct.req*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pg_error_badrequest(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @validate_arch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

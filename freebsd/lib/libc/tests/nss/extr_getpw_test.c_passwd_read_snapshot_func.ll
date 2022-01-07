; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_passwd_read_snapshot_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_passwd_read_snapshot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i8*, i32*, i32*, i32*, i32*, i8*, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, i8*)* @passwd_read_snapshot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_read_snapshot_func(%struct.passwd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.passwd*, %struct.passwd** %4, align 8
  %12 = call i32 @memset(%struct.passwd* %11, i32 0, i32 80)
  br label %13

13:                                               ; preds = %151, %2
  %14 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %154

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %150 [
    i32 0, label %18
    i32 1, label %30
    i32 2, label %42
    i32 3, label %54
    i32 4, label %66
    i32 5, label %78
    i32 6, label %90
    i32 7, label %102
    i32 8, label %114
    i32 9, label %126
    i32 10, label %138
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strdup(i8* %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.passwd*, %struct.passwd** %4, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 10
  store i32* %21, i32** %23, align 8
  %24 = load %struct.passwd*, %struct.passwd** %4, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 10
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ATF_REQUIRE(i32 %28)
  br label %151

30:                                               ; preds = %16
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @strdup(i8* %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.passwd*, %struct.passwd** %4, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 9
  store i32* %33, i32** %35, align 8
  %36 = load %struct.passwd*, %struct.passwd** %4, align 8
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 9
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ATF_REQUIRE(i32 %40)
  br label %151

42:                                               ; preds = %16
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @strtol(i8* %43, i8** %8, i32 10)
  %45 = trunc i64 %44 to i32
  %46 = load %struct.passwd*, %struct.passwd** %4, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %155

53:                                               ; preds = %42
  br label %151

54:                                               ; preds = %16
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strtol(i8* %55, i8** %8, i32 10)
  %57 = trunc i64 %56 to i32
  %58 = load %struct.passwd*, %struct.passwd** %4, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %155

65:                                               ; preds = %54
  br label %151

66:                                               ; preds = %16
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @strtol(i8* %67, i8** %8, i32 10)
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.passwd*, %struct.passwd** %4, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %155

77:                                               ; preds = %66
  br label %151

78:                                               ; preds = %16
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.passwd*, %struct.passwd** %4, align 8
  %83 = getelementptr inbounds %struct.passwd, %struct.passwd* %82, i32 0, i32 5
  store i32* %81, i32** %83, align 8
  %84 = load %struct.passwd*, %struct.passwd** %4, align 8
  %85 = getelementptr inbounds %struct.passwd, %struct.passwd* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @ATF_REQUIRE(i32 %88)
  br label %151

90:                                               ; preds = %16
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @strdup(i8* %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.passwd*, %struct.passwd** %4, align 8
  %95 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i32 0, i32 4
  store i32* %93, i32** %95, align 8
  %96 = load %struct.passwd*, %struct.passwd** %4, align 8
  %97 = getelementptr inbounds %struct.passwd, %struct.passwd* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @ATF_REQUIRE(i32 %100)
  br label %151

102:                                              ; preds = %16
  %103 = load i8*, i8** %6, align 8
  %104 = call i8* @strdup(i8* %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.passwd*, %struct.passwd** %4, align 8
  %107 = getelementptr inbounds %struct.passwd, %struct.passwd* %106, i32 0, i32 3
  store i32* %105, i32** %107, align 8
  %108 = load %struct.passwd*, %struct.passwd** %4, align 8
  %109 = getelementptr inbounds %struct.passwd, %struct.passwd* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @ATF_REQUIRE(i32 %112)
  br label %151

114:                                              ; preds = %16
  %115 = load i8*, i8** %6, align 8
  %116 = call i8* @strdup(i8* %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.passwd*, %struct.passwd** %4, align 8
  %119 = getelementptr inbounds %struct.passwd, %struct.passwd* %118, i32 0, i32 2
  store i32* %117, i32** %119, align 8
  %120 = load %struct.passwd*, %struct.passwd** %4, align 8
  %121 = getelementptr inbounds %struct.passwd, %struct.passwd* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @ATF_REQUIRE(i32 %124)
  br label %151

126:                                              ; preds = %16
  %127 = load i8*, i8** %6, align 8
  %128 = call i64 @strtol(i8* %127, i8** %8, i32 10)
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.passwd*, %struct.passwd** %4, align 8
  %131 = getelementptr inbounds %struct.passwd, %struct.passwd* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %155

137:                                              ; preds = %126
  br label %151

138:                                              ; preds = %16
  %139 = load i8*, i8** %6, align 8
  %140 = call i64 @strtol(i8* %139, i8** %8, i32 10)
  %141 = trunc i64 %140 to i32
  %142 = load %struct.passwd*, %struct.passwd** %4, align 8
  %143 = getelementptr inbounds %struct.passwd, %struct.passwd* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %155

149:                                              ; preds = %138
  br label %151

150:                                              ; preds = %16
  br label %151

151:                                              ; preds = %150, %149, %137, %114, %102, %90, %78, %77, %65, %53, %30, %18
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %13

154:                                              ; preds = %13
  br label %155

155:                                              ; preds = %154, %148, %136, %76, %64, %52
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 11
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.passwd*, %struct.passwd** %4, align 8
  %160 = call i32 @free_passwd(%struct.passwd* %159)
  %161 = load %struct.passwd*, %struct.passwd** %4, align 8
  %162 = call i32 @memset(%struct.passwd* %161, i32 0, i32 80)
  store i32 -1, i32* %3, align 4
  br label %164

163:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %158
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @memset(%struct.passwd*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free_passwd(%struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

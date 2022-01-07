; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_specspec.c_shownode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_specspec.c_shownode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i32, i32 }
%struct.group = type { i8* }
%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"%s%s %s\00", align 1
@F_CKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" cksum=%lu\00", align 1
@F_GID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" gid=%d\00", align 1
@F_GNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" gname=%s\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" mode=%o\00", align 1
@F_NLINK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" nlink=%ju\00", align 1
@F_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" size=%jd\00", align 1
@F_UID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" uid=%d\00", align 1
@F_UNAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" uname=%s\00", align 1
@F_MD5 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c" %s=%s\00", align 1
@MD5KEY = common dso_local global i8* null, align 8
@F_SHA1 = common dso_local global i32 0, align 4
@SHA1KEY = common dso_local global i8* null, align 8
@F_RMD160 = common dso_local global i32 0, align 4
@RMD160KEY = common dso_local global i8* null, align 8
@F_SHA256 = common dso_local global i32 0, align 4
@SHA256KEY = common dso_local global i8* null, align 8
@F_SHA384 = common dso_local global i32 0, align 4
@SHA384KEY = common dso_local global i8* null, align 8
@F_SHA512 = common dso_local global i32 0, align 4
@SHA512KEY = common dso_local global i8* null, align 8
@F_FLAGS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" flags=%s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*)* @shownode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shownode(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca %struct.passwd*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nodetoino(i32 %15)
  %17 = call i32 @inotype(i32 %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %12, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @F_CKSUM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @F_GID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @F_GNAME, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.group* @getgrgid(i32 %46)
  store %struct.group* %47, %struct.group** %7, align 8
  %48 = load %struct.group*, %struct.group** %7, align 8
  %49 = icmp eq %struct.group* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.group*, %struct.group** %7, align 8
  %57 = getelementptr inbounds %struct.group, %struct.group* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @F_MODE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @F_NLINK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 12
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @F_SIZE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @F_UID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @F_UNAME, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.passwd* @getpwuid(i32 %111)
  store %struct.passwd* %112, %struct.passwd** %8, align 8
  %113 = load %struct.passwd*, %struct.passwd** %8, align 8
  %114 = icmp eq %struct.passwd* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  br label %125

120:                                              ; preds = %108
  %121 = load %struct.passwd*, %struct.passwd** %8, align 8
  %122 = getelementptr inbounds %struct.passwd, %struct.passwd* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %103
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @F_MD5, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i8*, i8** @MD5KEY, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %132, i8* %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @F_SHA1, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i8*, i8** @SHA1KEY, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %143, i8* %146)
  br label %148

148:                                              ; preds = %142, %137
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @F_RMD160, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i8*, i8** @RMD160KEY, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 6
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %154, i8* %157)
  br label %159

159:                                              ; preds = %153, %148
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @F_SHA256, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i8*, i8** @SHA256KEY, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 7
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %165, i8* %168)
  br label %170

170:                                              ; preds = %164, %159
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @F_SHA384, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i8*, i8** @SHA384KEY, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 8
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %176, i8* %179)
  br label %181

181:                                              ; preds = %175, %170
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @F_SHA512, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i8*, i8** @SHA512KEY, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 9
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %187, i8* %190)
  br label %192

192:                                              ; preds = %186, %181
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @F_FLAGS, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @flags_to_string(i32 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %197, %192
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @inotype(i32) #1

declare dso_local i32 @nodetoino(i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i8* @flags_to_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

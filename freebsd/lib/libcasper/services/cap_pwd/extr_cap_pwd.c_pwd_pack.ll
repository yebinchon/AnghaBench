; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_pwd_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_pwd_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"pw_name\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_PWF_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"pw_uid\00", align 1
@_PWF_UID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"pw_gid\00", align 1
@_PWF_GID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"pw_change\00", align 1
@_PWF_CHANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"pw_passwd\00", align 1
@_PWF_PASSWD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"pw_class\00", align 1
@_PWF_CLASS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"pw_gecos\00", align 1
@_PWF_GECOS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"pw_dir\00", align 1
@_PWF_DIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"pw_shell\00", align 1
@_PWF_SHELL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"pw_expire\00", align 1
@_PWF_EXPIRE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"pw_fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.passwd*, i32*)* @pwd_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwd_pack(i32* %0, %struct.passwd* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.passwd* %1, %struct.passwd** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.passwd*, %struct.passwd** %6, align 8
  %10 = icmp eq %struct.passwd* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %204

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.passwd*, %struct.passwd** %6, align 8
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.passwd*, %struct.passwd** %6, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pwd_allowed_user(i32* %13, i8* %16, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %204

23:                                               ; preds = %12
  %24 = load %struct.passwd*, %struct.passwd** %6, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @pwd_allowed_field(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.passwd*, %struct.passwd** %6, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @nvlist_add_string(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %43

36:                                               ; preds = %23
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @nvlist_add_string(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @_PWF_NAME, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @pwd_allowed_field(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.passwd*, %struct.passwd** %6, align 8
  %50 = getelementptr inbounds %struct.passwd, %struct.passwd* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @nvlist_add_number(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %61

54:                                               ; preds = %43
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @nvlist_add_number(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %57 = load i32, i32* @_PWF_UID, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @pwd_allowed_field(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.passwd*, %struct.passwd** %6, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @nvlist_add_number(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %79

72:                                               ; preds = %61
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @nvlist_add_number(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %75 = load i32, i32* @_PWF_GID, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @pwd_allowed_field(i32* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.passwd*, %struct.passwd** %6, align 8
  %86 = getelementptr inbounds %struct.passwd, %struct.passwd* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @nvlist_add_number(i32* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %97

90:                                               ; preds = %79
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @nvlist_add_number(i32* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %93 = load i32, i32* @_PWF_CHANGE, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %90, %83
  %98 = load i32*, i32** %5, align 8
  %99 = call i64 @pwd_allowed_field(i32* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.passwd*, %struct.passwd** %6, align 8
  %104 = getelementptr inbounds %struct.passwd, %struct.passwd* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @nvlist_add_string(i32* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  br label %114

107:                                              ; preds = %97
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @nvlist_add_string(i32* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @_PWF_PASSWD, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %107, %101
  %115 = load i32*, i32** %5, align 8
  %116 = call i64 @pwd_allowed_field(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.passwd*, %struct.passwd** %6, align 8
  %121 = getelementptr inbounds %struct.passwd, %struct.passwd* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @nvlist_add_string(i32* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %122)
  br label %131

124:                                              ; preds = %114
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @nvlist_add_string(i32* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @_PWF_CLASS, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %124, %118
  %132 = load i32*, i32** %5, align 8
  %133 = call i64 @pwd_allowed_field(i32* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.passwd*, %struct.passwd** %6, align 8
  %138 = getelementptr inbounds %struct.passwd, %struct.passwd* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @nvlist_add_string(i32* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %139)
  br label %148

141:                                              ; preds = %131
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @nvlist_add_string(i32* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @_PWF_GECOS, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %141, %135
  %149 = load i32*, i32** %5, align 8
  %150 = call i64 @pwd_allowed_field(i32* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.passwd*, %struct.passwd** %6, align 8
  %155 = getelementptr inbounds %struct.passwd, %struct.passwd* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @nvlist_add_string(i32* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  br label %165

158:                                              ; preds = %148
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @nvlist_add_string(i32* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @_PWF_DIR, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %8, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %158, %152
  %166 = load i32*, i32** %5, align 8
  %167 = call i64 @pwd_allowed_field(i32* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i32*, i32** %7, align 8
  %171 = load %struct.passwd*, %struct.passwd** %6, align 8
  %172 = getelementptr inbounds %struct.passwd, %struct.passwd* %171, i32 0, i32 6
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @nvlist_add_string(i32* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %173)
  br label %182

175:                                              ; preds = %165
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @nvlist_add_string(i32* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %178 = load i32, i32* @_PWF_SHELL, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %8, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %175, %169
  %183 = load i32*, i32** %5, align 8
  %184 = call i64 @pwd_allowed_field(i32* %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load i32*, i32** %7, align 8
  %188 = load %struct.passwd*, %struct.passwd** %6, align 8
  %189 = getelementptr inbounds %struct.passwd, %struct.passwd* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 @nvlist_add_number(i32* %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %191)
  br label %200

193:                                              ; preds = %182
  %194 = load i32*, i32** %7, align 8
  %195 = call i32 @nvlist_add_number(i32* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %196 = load i32, i32* @_PWF_EXPIRE, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %8, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %193, %186
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @nvlist_add_number(i32* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %202)
  store i32 1, i32* %4, align 4
  br label %204

204:                                              ; preds = %200, %22, %11
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @pwd_allowed_user(i32*, i8*, i64) #1

declare dso_local i64 @pwd_allowed_field(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

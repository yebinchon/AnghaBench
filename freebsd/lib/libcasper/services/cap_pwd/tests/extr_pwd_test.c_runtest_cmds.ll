; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_runtest_cmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_runtest_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@GETPWENT0 = common dso_local global i32 0, align 4
@GETPWENT1 = common dso_local global i32 0, align 4
@GETPWENT_R0 = common dso_local global i32 0, align 4
@GETPWENT_R1 = common dso_local global i32 0, align 4
@GETPWENT_R2 = common dso_local global i32 0, align 4
@GETPWENT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@GETPWNAM = common dso_local global i32 0, align 4
@GETPWNAM_R = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@UID_OPERATOR = common dso_local global i32 0, align 4
@GETPWUID = common dso_local global i32 0, align 4
@GETPWUID_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @runtest_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtest_cmds(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.passwd, align 4
  %9 = alloca %struct.passwd, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = call i32 (...) @setpwent()
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @cap_setpwent(i32* %11)
  %13 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %13, %struct.passwd** %6, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.passwd* @cap_getpwent(i32* %14)
  store %struct.passwd* %15, %struct.passwd** %7, align 8
  %16 = load %struct.passwd*, %struct.passwd** %6, align 8
  %17 = load %struct.passwd*, %struct.passwd** %7, align 8
  %18 = call i64 @passwd_compare(%struct.passwd* %16, %struct.passwd* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @GETPWENT0, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %24, %struct.passwd** %6, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call %struct.passwd* @cap_getpwent(i32* %25)
  store %struct.passwd* %26, %struct.passwd** %7, align 8
  %27 = load %struct.passwd*, %struct.passwd** %6, align 8
  %28 = load %struct.passwd*, %struct.passwd** %7, align 8
  %29 = call i64 @passwd_compare(%struct.passwd* %27, %struct.passwd* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @GETPWENT1, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %20
  br label %36

36:                                               ; preds = %35, %1
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %38 = call i32 @getpwent_r(%struct.passwd* %8, i8* %37, i32 1024, %struct.passwd** %6)
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %41 = call i32 @cap_getpwent_r(i32* %39, %struct.passwd* %9, i8* %40, i32 1024, %struct.passwd** %7)
  %42 = load %struct.passwd*, %struct.passwd** %6, align 8
  %43 = load %struct.passwd*, %struct.passwd** %7, align 8
  %44 = call i64 @passwd_compare(%struct.passwd* %42, %struct.passwd* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %36
  %47 = load i32, i32* @GETPWENT_R0, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %51 = call i32 @getpwent_r(%struct.passwd* %8, i8* %50, i32 1024, %struct.passwd** %6)
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %54 = call i32 @cap_getpwent_r(i32* %52, %struct.passwd* %9, i8* %53, i32 1024, %struct.passwd** %7)
  %55 = load %struct.passwd*, %struct.passwd** %6, align 8
  %56 = load %struct.passwd*, %struct.passwd** %7, align 8
  %57 = call i64 @passwd_compare(%struct.passwd* %55, %struct.passwd* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load i32, i32* @GETPWENT_R1, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %46
  br label %64

64:                                               ; preds = %63, %36
  %65 = call i32 (...) @setpwent()
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @cap_setpwent(i32* %66)
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %69 = call i32 @getpwent_r(%struct.passwd* %8, i8* %68, i32 1024, %struct.passwd** %6)
  %70 = load i32*, i32** %2, align 8
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %72 = call i32 @cap_getpwent_r(i32* %70, %struct.passwd* %9, i8* %71, i32 1024, %struct.passwd** %7)
  %73 = load %struct.passwd*, %struct.passwd** %6, align 8
  %74 = load %struct.passwd*, %struct.passwd** %7, align 8
  %75 = call i64 @passwd_compare(%struct.passwd* %73, %struct.passwd* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load i32, i32* @GETPWENT_R2, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %64
  %82 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %82, %struct.passwd** %6, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = call %struct.passwd* @cap_getpwent(i32* %83)
  store %struct.passwd* %84, %struct.passwd** %7, align 8
  %85 = load %struct.passwd*, %struct.passwd** %6, align 8
  %86 = load %struct.passwd*, %struct.passwd** %7, align 8
  %87 = call i64 @passwd_compare(%struct.passwd* %85, %struct.passwd* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @GETPWENT2, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %81
  %94 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.passwd* %94, %struct.passwd** %6, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = call %struct.passwd* @cap_getpwnam(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.passwd* %96, %struct.passwd** %7, align 8
  %97 = load %struct.passwd*, %struct.passwd** %6, align 8
  %98 = load %struct.passwd*, %struct.passwd** %7, align 8
  %99 = call i64 @passwd_compare(%struct.passwd* %97, %struct.passwd* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %93
  %102 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.passwd* %102, %struct.passwd** %6, align 8
  %103 = load i32*, i32** %2, align 8
  %104 = call %struct.passwd* @cap_getpwnam(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.passwd* %104, %struct.passwd** %7, align 8
  %105 = load %struct.passwd*, %struct.passwd** %6, align 8
  %106 = load %struct.passwd*, %struct.passwd** %7, align 8
  %107 = call i64 @passwd_compare(%struct.passwd* %105, %struct.passwd* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32, i32* @GETPWNAM, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %101
  br label %114

114:                                              ; preds = %113, %93
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %116 = call i32 @getpwnam_r(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.passwd* %8, i8* %115, i32 1024, %struct.passwd** %6)
  %117 = load i32*, i32** %2, align 8
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %119 = call i32 @cap_getpwnam_r(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.passwd* %9, i8* %118, i32 1024, %struct.passwd** %7)
  %120 = load %struct.passwd*, %struct.passwd** %6, align 8
  %121 = load %struct.passwd*, %struct.passwd** %7, align 8
  %122 = call i64 @passwd_compare(%struct.passwd* %120, %struct.passwd* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %114
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %126 = call i32 @getpwnam_r(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.passwd* %8, i8* %125, i32 1024, %struct.passwd** %6)
  %127 = load i32*, i32** %2, align 8
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %129 = call i32 @cap_getpwnam_r(i32* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.passwd* %9, i8* %128, i32 1024, %struct.passwd** %7)
  %130 = load %struct.passwd*, %struct.passwd** %6, align 8
  %131 = load %struct.passwd*, %struct.passwd** %7, align 8
  %132 = call i64 @passwd_compare(%struct.passwd* %130, %struct.passwd* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %124
  %135 = load i32, i32* @GETPWNAM_R, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %124
  br label %139

139:                                              ; preds = %138, %114
  %140 = load i32, i32* @UID_ROOT, align 4
  %141 = call %struct.passwd* @getpwuid(i32 %140)
  store %struct.passwd* %141, %struct.passwd** %6, align 8
  %142 = load i32*, i32** %2, align 8
  %143 = load i32, i32* @UID_ROOT, align 4
  %144 = call %struct.passwd* @cap_getpwuid(i32* %142, i32 %143)
  store %struct.passwd* %144, %struct.passwd** %7, align 8
  %145 = load %struct.passwd*, %struct.passwd** %6, align 8
  %146 = load %struct.passwd*, %struct.passwd** %7, align 8
  %147 = call i64 @passwd_compare(%struct.passwd* %145, %struct.passwd* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %139
  %150 = load i32, i32* @UID_OPERATOR, align 4
  %151 = call %struct.passwd* @getpwuid(i32 %150)
  store %struct.passwd* %151, %struct.passwd** %6, align 8
  %152 = load i32*, i32** %2, align 8
  %153 = load i32, i32* @UID_OPERATOR, align 4
  %154 = call %struct.passwd* @cap_getpwuid(i32* %152, i32 %153)
  store %struct.passwd* %154, %struct.passwd** %7, align 8
  %155 = load %struct.passwd*, %struct.passwd** %6, align 8
  %156 = load %struct.passwd*, %struct.passwd** %7, align 8
  %157 = call i64 @passwd_compare(%struct.passwd* %155, %struct.passwd* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @GETPWUID, align 4
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %159, %149
  br label %164

164:                                              ; preds = %163, %139
  %165 = load i32, i32* @UID_ROOT, align 4
  %166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %167 = call i32 @getpwuid_r(i32 %165, %struct.passwd* %8, i8* %166, i32 1024, %struct.passwd** %6)
  %168 = load i32*, i32** %2, align 8
  %169 = load i32, i32* @UID_ROOT, align 4
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %171 = call i32 @cap_getpwuid_r(i32* %168, i32 %169, %struct.passwd* %9, i8* %170, i32 1024, %struct.passwd** %7)
  %172 = load %struct.passwd*, %struct.passwd** %6, align 8
  %173 = load %struct.passwd*, %struct.passwd** %7, align 8
  %174 = call i64 @passwd_compare(%struct.passwd* %172, %struct.passwd* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %164
  %177 = load i32, i32* @UID_OPERATOR, align 4
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %179 = call i32 @getpwuid_r(i32 %177, %struct.passwd* %8, i8* %178, i32 1024, %struct.passwd** %6)
  %180 = load i32*, i32** %2, align 8
  %181 = load i32, i32* @UID_OPERATOR, align 4
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %183 = call i32 @cap_getpwuid_r(i32* %180, i32 %181, %struct.passwd* %9, i8* %182, i32 1024, %struct.passwd** %7)
  %184 = load %struct.passwd*, %struct.passwd** %6, align 8
  %185 = load %struct.passwd*, %struct.passwd** %7, align 8
  %186 = call i64 @passwd_compare(%struct.passwd* %184, %struct.passwd* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %176
  %189 = load i32, i32* @GETPWUID_R, align 4
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %188, %176
  br label %193

193:                                              ; preds = %192, %164
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @setpwent(...) #1

declare dso_local i32 @cap_setpwent(i32*) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local %struct.passwd* @cap_getpwent(i32*) #1

declare dso_local i64 @passwd_compare(%struct.passwd*, %struct.passwd*) #1

declare dso_local i32 @getpwent_r(%struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local i32 @cap_getpwent_r(i32*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.passwd* @cap_getpwnam(i32*, i8*) #1

declare dso_local i32 @getpwnam_r(i8*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local i32 @cap_getpwnam_r(i32*, i8*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local %struct.passwd* @cap_getpwuid(i32*, i32) #1

declare dso_local i32 @getpwuid_r(i32, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local i32 @cap_getpwuid_r(i32*, i32, %struct.passwd*, i8*, i32, %struct.passwd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

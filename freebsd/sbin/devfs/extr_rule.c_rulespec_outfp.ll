; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devfs/extr_rule.c_rulespec_outfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devfs/extr_rule.c_rulespec_outfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intstr = type { i8*, i32 }
%struct.devfs_rule = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.passwd = type { i8* }
%struct.group = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@DRC_DSWFLAGS = common dso_local global i32 0, align 4
@ist_type = common dso_local global %struct.intstr* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" type %s\00", align 1
@DRC_PATHPTRN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" path %s\00", align 1
@DRA_BACTS = common dso_local global i32 0, align 4
@DRB_HIDE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" hide\00", align 1
@DRB_UNHIDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" unhide\00", align 1
@DRA_UID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c" user %d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" user %s\00", align 1
@DRA_GID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" group %d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" group %s\00", align 1
@DRA_MODE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" mode %o\00", align 1
@DRA_INCSET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c" include %d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.devfs_rule*)* @rulespec_outfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rulespec_outfp(i32* %0, %struct.devfs_rule* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.devfs_rule*, align 8
  %5 = alloca %struct.intstr*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.group*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.devfs_rule* %1, %struct.devfs_rule** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %10 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @rid2rn(i32 %11)
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %15 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DRC_DSWFLAGS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.intstr*, %struct.intstr** @ist_type, align 8
  store %struct.intstr* %21, %struct.intstr** %5, align 8
  br label %22

22:                                               ; preds = %43, %20
  %23 = load %struct.intstr*, %struct.intstr** %5, align 8
  %24 = getelementptr inbounds %struct.intstr, %struct.intstr* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %29 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intstr*, %struct.intstr** %5, align 8
  %32 = getelementptr inbounds %struct.intstr, %struct.intstr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.intstr*, %struct.intstr** %5, align 8
  %39 = getelementptr inbounds %struct.intstr, %struct.intstr* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %36, %27
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.intstr*, %struct.intstr** %5, align 8
  %45 = getelementptr inbounds %struct.intstr, %struct.intstr* %44, i32 1
  store %struct.intstr* %45, %struct.intstr** %5, align 8
  br label %22

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %49 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DRC_PATHPTRN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %57 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %62 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DRA_BACTS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %69 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DRB_HIDE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %79 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DRB_UNHIDE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %60
  %89 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %90 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DRA_UID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %88
  %96 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %97 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.passwd* @getpwuid(i32 %98)
  store %struct.passwd* %99, %struct.passwd** %6, align 8
  %100 = load %struct.passwd*, %struct.passwd** %6, align 8
  %101 = icmp eq %struct.passwd* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %105 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %114

108:                                              ; preds = %95
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.passwd*, %struct.passwd** %6, align 8
  %111 = getelementptr inbounds %struct.passwd, %struct.passwd* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %108, %102
  br label %115

115:                                              ; preds = %114, %88
  %116 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %117 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DRA_GID, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %115
  %123 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %124 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.group* @getgrgid(i32 %125)
  store %struct.group* %126, %struct.group** %7, align 8
  %127 = load %struct.group*, %struct.group** %7, align 8
  %128 = icmp eq %struct.group* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load i32*, i32** %3, align 8
  %131 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %132 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  br label %141

135:                                              ; preds = %122
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.group*, %struct.group** %7, align 8
  %138 = getelementptr inbounds %struct.group, %struct.group* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %135, %129
  br label %142

142:                                              ; preds = %141, %115
  %143 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %144 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DRA_MODE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32*, i32** %3, align 8
  %151 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %152 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %157 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @DRA_INCSET, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32*, i32** %3, align 8
  %164 = load %struct.devfs_rule*, %struct.devfs_rule** %4, align 8
  %165 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %162, %155
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @rid2rn(i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

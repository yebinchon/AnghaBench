; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_interface_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_interface_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [32 x i8] c"interface_action: interface %s \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"wildcard\00", align 1
@INT_LOOPBACK = common dso_local global i32 0, align 4
@nic_rule_list = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"nic all %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"nic ipv4 %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nic ipv6 %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"nic wildcard %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"subnet address match - %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"address match - %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"interface name match - %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"default loopback listen\0A\00", align 1
@ACTION_LISTEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"default wildcard drop\0A\00", align 1
@ACTION_DROP = common dso_local global i32 0, align 4
@listen_to_virtual_ips = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"virtual ip - ignore\0A\00", align 1
@ACTION_IGNORE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"default listen\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"implicit ignore\0A\00", align 1
@FNM_CASEFOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @interface_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interface_action(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = call i32 @DPRINTF(i32 4, i8* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @is_wildcard_addr(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @INT_LOOPBACK, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nic_rule_list, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %8, align 8
  br label %29

29:                                               ; preds = %169, %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %173

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %168 [
    i32 133, label %36
    i32 130, label %54
    i32 129, label %70
    i32 128, label %86
    i32 132, label %101
    i32 131, label %146
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  br label %168

43:                                               ; preds = %39
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @action_text(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DPRINTF(i32 4, i8* %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %4, align 4
  br label %207

54:                                               ; preds = %32
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @IS_IPV4(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @action_text(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @DPRINTF(i32 4, i8* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  br label %207

69:                                               ; preds = %54
  br label %168

70:                                               ; preds = %32
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @IS_IPV6(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @action_text(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @DPRINTF(i32 4, i8* %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %4, align 4
  br label %207

85:                                               ; preds = %70
  br label %168

86:                                               ; preds = %32
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @action_text(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @DPRINTF(i32 4, i8* %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %4, align 4
  br label %207

100:                                              ; preds = %86
  br label %168

101:                                              ; preds = %32
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %127

106:                                              ; preds = %101
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @addr_eqprefix(i32* %107, i32* %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %106
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @action_text(i32 %118)
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @DPRINTF(i32 4, i8* %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %4, align 4
  br label %207

126:                                              ; preds = %106
  br label %145

127:                                              ; preds = %101
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = call i32 @SOCK_EQ(i32* %128, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @action_text(i32 %136)
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 @DPRINTF(i32 4, i8* %139)
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %4, align 4
  br label %207

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144, %126
  br label %168

146:                                              ; preds = %32
  %147 = load i8*, i8** %5, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i8*, i8** %5, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @strcasecmp(i8* %150, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @action_text(i32 %159)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @DPRINTF(i32 4, i8* %162)
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %4, align 4
  br label %207

167:                                              ; preds = %149, %146
  br label %168

168:                                              ; preds = %32, %167, %145, %100, %85, %69, %42
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  store %struct.TYPE_3__* %172, %struct.TYPE_3__** %8, align 8
  br label %29

173:                                              ; preds = %29
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %178 = load i32, i32* @ACTION_LISTEN, align 4
  store i32 %178, i32* %4, align 4
  br label %207

179:                                              ; preds = %173
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %184 = load i32, i32* @ACTION_DROP, align 4
  store i32 %184, i32* %4, align 4
  br label %207

185:                                              ; preds = %179
  %186 = load i32, i32* @listen_to_virtual_ips, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %185
  %189 = load i8*, i8** %5, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i8*, i8** %5, align 8
  %193 = call i32* @strchr(i8* %192, i8 signext 58)
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %197 = load i32, i32* @ACTION_IGNORE, align 4
  store i32 %197, i32* %4, align 4
  br label %207

198:                                              ; preds = %191, %188, %185
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nic_rule_list, align 8
  %200 = icmp eq %struct.TYPE_3__* null, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %203 = load i32, i32* @ACTION_LISTEN, align 4
  store i32 %203, i32* %4, align 4
  br label %207

204:                                              ; preds = %198
  %205 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %206 = load i32, i32* @ACTION_IGNORE, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %204, %201, %195, %182, %176, %156, %133, %115, %89, %74, %58, %43
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @is_wildcard_addr(i32*) #1

declare dso_local i32 @action_text(i32) #1

declare dso_local i32 @IS_IPV4(i32*) #1

declare dso_local i32 @IS_IPV6(i32*) #1

declare dso_local i32 @addr_eqprefix(i32*, i32*, i32) #1

declare dso_local i32 @SOCK_EQ(i32*, i32*) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
